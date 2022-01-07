
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct l2cap_chan_list {struct sock* head; } ;
struct TYPE_2__ {scalar_t__ ident; struct sock* next_c; } ;


 TYPE_1__* l2cap_pi (struct sock*) ;

__attribute__((used)) static struct sock *__l2cap_get_chan_by_ident(struct l2cap_chan_list *l, u8 ident)
{
 struct sock *s;
 for (s = l->head; s; s = l2cap_pi(s)->next_c) {
  if (l2cap_pi(s)->ident == ident)
   break;
 }
 return s;
}
