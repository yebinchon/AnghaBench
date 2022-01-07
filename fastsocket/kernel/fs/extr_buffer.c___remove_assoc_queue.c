
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {TYPE_1__* b_assoc_map; int b_assoc_buffers; } ;
struct TYPE_2__ {int flags; } ;


 int AS_EIO ;
 int WARN_ON (int) ;
 scalar_t__ buffer_write_io_error (struct buffer_head*) ;
 int list_del_init (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __remove_assoc_queue(struct buffer_head *bh)
{
 list_del_init(&bh->b_assoc_buffers);
 WARN_ON(!bh->b_assoc_map);
 if (buffer_write_io_error(bh))
  set_bit(AS_EIO, &bh->b_assoc_map->flags);
 bh->b_assoc_map = ((void*)0);
}
