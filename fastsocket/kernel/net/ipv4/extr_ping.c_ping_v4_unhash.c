
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_prot; int sk_nulls_node; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ num; } ;
struct TYPE_2__ {int lock; } ;


 int hlist_nulls_del (int *) ;
 struct inet_sock* inet_sk (struct sock*) ;
 TYPE_1__ ping_table ;
 int pr_debug (char*,struct inet_sock*,scalar_t__) ;
 scalar_t__ sk_hashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int sock_put (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void ping_v4_unhash(struct sock *sk)
{
 struct inet_sock *isk = inet_sk(sk);
 pr_debug("ping_v4_unhash(isk=%p,isk->num=%u)\n", isk, isk->num);
 if (sk_hashed(sk)) {
  write_lock_bh(&ping_table.lock);
  hlist_nulls_del(&sk->sk_nulls_node);
  sock_put(sk);
  isk->num = 0;
  isk->sport = 0;
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
  write_unlock_bh(&ping_table.lock);
 }
}
