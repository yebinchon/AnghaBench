
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {TYPE_1__* s_root; } ;
struct inode {int i_generation; } ;
struct fid {int* raw; } ;
struct dentry {int d_op; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_logstart; } ;
struct TYPE_3__ {int d_op; } ;


 int IS_ERR (struct dentry*) ;
 TYPE_2__* MSDOS_I (struct inode*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct inode* fat_iget (struct super_block*,int) ;
 struct inode* ilookup (struct super_block*,int) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *fat_fh_to_dentry(struct super_block *sb,
  struct fid *fid, int fh_len, int fh_type)
{
 struct inode *inode = ((void*)0);
 struct dentry *result;
 u32 *fh = fid->raw;

 if (fh_len < 5 || fh_type != 3)
  return ((void*)0);

 inode = ilookup(sb, fh[0]);
 if (!inode || inode->i_generation != fh[1]) {
  if (inode)
   iput(inode);
  inode = ((void*)0);
 }
 if (!inode) {
  loff_t i_pos;
  int i_logstart = fh[3] & 0x0fffffff;

  i_pos = (loff_t)fh[2] << 8;
  i_pos |= ((fh[3] >> 24) & 0xf0) | (fh[4] >> 28);






  inode = fat_iget(sb, i_pos);
  if (inode && MSDOS_I(inode)->i_logstart != i_logstart) {
   iput(inode);
   inode = ((void*)0);
  }
 }
 result = d_obtain_alias(inode);
 if (!IS_ERR(result))
  result->d_op = sb->s_root->d_op;
 return result;
}
