
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct l2cap_chan_list {int lock; struct sock* head; } ;
struct TYPE_2__ {struct sock* next_c; struct sock* prev_c; } ;


 int __sock_put (struct sock*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void l2cap_chan_unlink(struct l2cap_chan_list *l, struct sock *sk)
{
 struct sock *next = l2cap_pi(sk)->next_c, *prev = l2cap_pi(sk)->prev_c;

 write_lock_bh(&l->lock);
 if (sk == l->head)
  l->head = next;

 if (next)
  l2cap_pi(next)->prev_c = prev;
 if (prev)
  l2cap_pi(prev)->next_c = next;
 write_unlock_bh(&l->lock);

 __sock_put(sk);
}
