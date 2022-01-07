
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fname {struct fname* next; int file_type; int inode; int name_len; int name; int minor_hash; int hash; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; struct dir_private_info* private_data; } ;
struct dir_private_info {struct fname* extra_fname; } ;
typedef int loff_t ;
typedef int (* filldir_t ) (void*,int ,int ,int ,int ,int ) ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int get_dtype (struct super_block*,int ) ;
 int hash2pos (int ,int ) ;
 int printk (char*) ;

__attribute__((used)) static int call_filldir(struct file * filp, void * dirent,
   filldir_t filldir, struct fname *fname)
{
 struct dir_private_info *info = filp->private_data;
 loff_t curr_pos;
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct super_block * sb;
 int error;

 sb = inode->i_sb;

 if (!fname) {
  printk("call_filldir: called with null fname?!?\n");
  return 0;
 }
 curr_pos = hash2pos(fname->hash, fname->minor_hash);
 while (fname) {
  error = filldir(dirent, fname->name,
    fname->name_len, curr_pos,
    fname->inode,
    get_dtype(sb, fname->file_type));
  if (error) {
   filp->f_pos = curr_pos;
   info->extra_fname = fname;
   return error;
  }
  fname = fname->next;
 }
 return 0;
}
