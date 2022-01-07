
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct l2cap_chan_list {struct sock* head; } ;
struct TYPE_2__ {scalar_t__ scid; struct sock* next_c; } ;


 TYPE_1__* l2cap_pi (struct sock*) ;

__attribute__((used)) static struct sock *__l2cap_get_chan_by_scid(struct l2cap_chan_list *l, u16 cid)
{
 struct sock *s;
 for (s = l->head; s; s = l2cap_pi(s)->next_c) {
  if (l2cap_pi(s)->scid == cid)
   break;
 }
 return s;
}
