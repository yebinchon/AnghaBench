
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct inode {int i_mutex; struct super_block* i_sb; } ;
struct hpfs_inode_info {int i_dno; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_pos; TYPE_2__ f_path; } ;
typedef int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ESPIPE ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_de_as_down_as_possible (struct super_block*,int ) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int lock_kernel () ;
 scalar_t__ map_pos_dirent (struct inode*,int*,struct quad_buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static loff_t hpfs_dir_lseek(struct file *filp, loff_t off, int whence)
{
 loff_t new_off = off + (whence == 1 ? filp->f_pos : 0);
 loff_t pos;
 struct quad_buffer_head qbh;
 struct inode *i = filp->f_path.dentry->d_inode;
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);
 struct super_block *s = i->i_sb;

 lock_kernel();


 if (new_off == 0 || new_off == 1 || new_off == 11 || new_off == 12 || new_off == 13) goto ok;
 mutex_lock(&i->i_mutex);
 pos = ((loff_t) hpfs_de_as_down_as_possible(s, hpfs_inode->i_dno) << 4) + 1;
 while (pos != new_off) {
  if (map_pos_dirent(i, &pos, &qbh)) hpfs_brelse4(&qbh);
  else goto fail;
  if (pos == 12) goto fail;
 }
 mutex_unlock(&i->i_mutex);
ok:
 unlock_kernel();
 return filp->f_pos = new_off;
fail:
 mutex_unlock(&i->i_mutex);

 unlock_kernel();
 return -ESPIPE;
}
