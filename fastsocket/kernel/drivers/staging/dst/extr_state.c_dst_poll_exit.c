
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int * whead; int wait; } ;


 int remove_wait_queue (int *,int *) ;

void dst_poll_exit(struct dst_state *st)
{
 if (st->whead) {
  remove_wait_queue(st->whead, &st->wait);
  st->whead = ((void*)0);
 }
}
