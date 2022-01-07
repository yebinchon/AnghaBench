
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct TYPE_2__ {int ack_queue; } ;


 TYPE_1__* rose_sk (struct sock*) ;
 int skb_queue_purge (int *) ;

void rose_clear_queues(struct sock *sk)
{
 skb_queue_purge(&sk->sk_write_queue);
 skb_queue_purge(&rose_sk(sk)->ack_queue);
}
