
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct l2cap_chan_list {struct sock* head; } ;
struct TYPE_2__ {struct sock* prev_c; struct sock* next_c; } ;


 TYPE_1__* l2cap_pi (struct sock*) ;
 int sock_hold (struct sock*) ;

__attribute__((used)) static inline void __l2cap_chan_link(struct l2cap_chan_list *l, struct sock *sk)
{
 sock_hold(sk);

 if (l->head)
  l2cap_pi(l->head)->prev_c = sk;

 l2cap_pi(sk)->next_c = l->head;
 l2cap_pi(sk)->prev_c = ((void*)0);
 l->head = sk;
}
