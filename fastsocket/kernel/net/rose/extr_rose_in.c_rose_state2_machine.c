
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct rose_sock {TYPE_1__* neighbour; } ;
struct TYPE_2__ {int use; } ;




 int rose_disconnect (struct sock*,int ,int,int) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_write_internal (struct sock*,int) ;

__attribute__((used)) static int rose_state2_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 struct rose_sock *rose = rose_sk(sk);

 switch (frametype) {
 case 128:
  rose_write_internal(sk, 129);
  rose_disconnect(sk, 0, skb->data[3], skb->data[4]);
  rose->neighbour->use--;
  break;

 case 129:
  rose_disconnect(sk, 0, -1, -1);
  rose->neighbour->use--;
  break;

 default:
  break;
 }

 return 0;
}
