
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int sdn_flags; } ;
struct dn_scp {TYPE_1__ addr; scalar_t__ addrloc; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 int SDF_WILD ;
 int dn_hash_lock ;
 struct hlist_head* listen_hash (TYPE_1__*) ;
 int sk_add_node (struct sock*,struct hlist_head*) ;
 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void dn_rehash_sock(struct sock *sk)
{
 struct hlist_head *list;
 struct dn_scp *scp = DN_SK(sk);

 if (scp->addr.sdn_flags & SDF_WILD)
  return;

 write_lock_bh(&dn_hash_lock);
 sk_del_node_init(sk);
 DN_SK(sk)->addrloc = 0;
 list = listen_hash(&DN_SK(sk)->addr);
 sk_add_node(sk, list);
 write_unlock_bh(&dn_hash_lock);
}
