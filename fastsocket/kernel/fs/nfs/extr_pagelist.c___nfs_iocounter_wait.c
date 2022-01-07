
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct nfs_io_counter {int flags; int io_count; } ;
struct TYPE_3__ {int wait; } ;


 int DEFINE_WAIT_BIT (TYPE_1__,int *,int ) ;
 int NFS_IO_INPROGRESS ;
 int TASK_KILLABLE ;
 scalar_t__ atomic_read (int *) ;
 int * bit_waitqueue (int *,int ) ;
 int finish_wait (int *,int *) ;
 int nfs_wait_bit_killable (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 TYPE_1__ q ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
__nfs_iocounter_wait(struct nfs_io_counter *c)
{
 wait_queue_head_t *wq = bit_waitqueue(&c->flags, NFS_IO_INPROGRESS);
 DEFINE_WAIT_BIT(q, &c->flags, NFS_IO_INPROGRESS);
 int ret = 0;

 do {
  prepare_to_wait(wq, &q.wait, TASK_KILLABLE);
  set_bit(NFS_IO_INPROGRESS, &c->flags);
  if (atomic_read(&c->io_count) == 0)
   break;
  ret = nfs_wait_bit_killable(&c->flags);
 } while (atomic_read(&c->io_count) != 0);
 finish_wait(wq, &q.wait);
 return ret;
}
