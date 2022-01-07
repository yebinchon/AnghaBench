
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int * data; } ;
struct TYPE_4__ {TYPE_1__* neighbour; } ;
struct TYPE_3__ {int use; } ;


 int ROSE_CLEAR_CONFIRMATION ;
 int ROSE_CLEAR_REQUEST ;
 int rose_disconnect (struct sock*,int ,int ,int ) ;
 TYPE_2__* rose_sk (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;

__attribute__((used)) static int rose_state5_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 if (frametype == ROSE_CLEAR_REQUEST) {
  rose_write_internal(sk, ROSE_CLEAR_CONFIRMATION);
  rose_disconnect(sk, 0, skb->data[3], skb->data[4]);
  rose_sk(sk)->neighbour->use--;
 }

 return 0;
}
