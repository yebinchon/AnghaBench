
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jfs_inode_info {int active_ag; int agno; int ag_lock; } ;
struct inode {scalar_t__ i_size; int i_sb; int i_mode; } ;
struct file {int f_mode; } ;
struct TYPE_4__ {TYPE_1__* bmap; } ;
struct TYPE_3__ {int * db_active; } ;


 int FMODE_WRITE ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 TYPE_2__* JFS_SBI (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int atomic_inc (int *) ;
 int generic_file_open (struct inode*,struct file*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int jfs_open(struct inode *inode, struct file *file)
{
 int rc;

 if ((rc = generic_file_open(inode, file)))
  return rc;
 if (S_ISREG(inode->i_mode) && file->f_mode & FMODE_WRITE &&
     (inode->i_size == 0)) {
  struct jfs_inode_info *ji = JFS_IP(inode);
  spin_lock_irq(&ji->ag_lock);
  if (ji->active_ag == -1) {
   ji->active_ag = ji->agno;
   atomic_inc(
       &JFS_SBI(inode->i_sb)->bmap->db_active[ji->agno]);
  }
  spin_unlock_irq(&ji->ag_lock);
 }

 return 0;
}
