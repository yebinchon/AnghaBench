
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int finalized; int kref; int timer; } ;


 int del_timer_sync (int *) ;
 int kref_put (int *,int ) ;
 int relay_remove_buf ;

__attribute__((used)) static void relay_close_buf(struct rchan_buf *buf)
{
 buf->finalized = 1;
 del_timer_sync(&buf->timer);
 kref_put(&buf->kref, relay_remove_buf);
}
