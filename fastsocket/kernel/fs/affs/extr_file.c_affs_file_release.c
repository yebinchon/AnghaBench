
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_size; int i_mutex; int i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ mmu_private; int i_opencnt; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int affs_free_prealloc (struct inode*) ;
 int affs_truncate (struct inode*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int
affs_file_release(struct inode *inode, struct file *filp)
{
 pr_debug("AFFS: release(%lu, %d)\n",
   inode->i_ino, atomic_read(&AFFS_I(inode)->i_opencnt));

 if (atomic_dec_and_test(&AFFS_I(inode)->i_opencnt)) {
  mutex_lock(&inode->i_mutex);
  if (inode->i_size != AFFS_I(inode)->mmu_private)
   affs_truncate(inode);
  affs_free_prealloc(inode);
  mutex_unlock(&inode->i_mutex);
 }

 return 0;
}
