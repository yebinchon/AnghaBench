
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 int capable (int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 scalar_t__ kcore_need_update ;
 int kcore_update_ram () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* proc_root_kcore ;

__attribute__((used)) static int open_kcore(struct inode *inode, struct file *filp)
{
 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;
 if (kcore_need_update)
  kcore_update_ram();
 if (i_size_read(inode) != proc_root_kcore->size) {
  mutex_lock(&inode->i_mutex);
  i_size_write(inode, proc_root_kcore->size);
  mutex_unlock(&inode->i_mutex);
 }
 return 0;
}
