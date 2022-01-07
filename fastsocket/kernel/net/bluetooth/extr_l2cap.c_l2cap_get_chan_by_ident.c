
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct l2cap_chan_list {int lock; } ;


 struct sock* __l2cap_get_chan_by_ident (struct l2cap_chan_list*,int ) ;
 int bh_lock_sock (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static inline struct sock *l2cap_get_chan_by_ident(struct l2cap_chan_list *l, u8 ident)
{
 struct sock *s;
 read_lock(&l->lock);
 s = __l2cap_get_chan_by_ident(l, ident);
 if (s)
  bh_lock_sock(s);
 read_unlock(&l->lock);
 return s;
}
