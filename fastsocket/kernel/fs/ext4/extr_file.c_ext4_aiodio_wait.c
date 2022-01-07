
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_aiodio_unwritten; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 int * to_aio_wq (struct inode*) ;
 int wait_event (int ,int) ;

void ext4_aiodio_wait(struct inode *inode)
{
 wait_queue_head_t *wq = to_aio_wq(inode);

 wait_event(*wq, (atomic_read(&EXT4_I(inode)->i_aiodio_unwritten) == 0));
}
