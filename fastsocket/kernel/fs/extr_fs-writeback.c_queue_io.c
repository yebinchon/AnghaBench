
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int b_io; int b_dirty; int b_more_io; } ;


 int list_splice_init (int *,int *) ;
 int move_expired_inodes (int *,int *,unsigned long*) ;

__attribute__((used)) static void queue_io(struct bdi_writeback *wb, unsigned long *older_than_this)
{
 list_splice_init(&wb->b_more_io, &wb->b_io);
 move_expired_inodes(&wb->b_dirty, &wb->b_io, older_than_this);
}
