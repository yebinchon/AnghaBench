
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2cap_chan_list {int lock; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;


 int __l2cap_chan_add (struct l2cap_conn*,struct sock*,struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void l2cap_chan_add(struct l2cap_conn *conn, struct sock *sk, struct sock *parent)
{
 struct l2cap_chan_list *l = &conn->chan_list;
 write_lock_bh(&l->lock);
 __l2cap_chan_add(conn, sk, parent);
 write_unlock_bh(&l->lock);
}
