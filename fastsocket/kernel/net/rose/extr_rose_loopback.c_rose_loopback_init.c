
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_timer (int *) ;
 int loopback_queue ;
 int loopback_timer ;
 int skb_queue_head_init (int *) ;

void rose_loopback_init(void)
{
 skb_queue_head_init(&loopback_queue);

 init_timer(&loopback_timer);
}
