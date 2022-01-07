
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_version; int sadb_msg_satype; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ u; int done; int * dump; int msg_pid; int msg_version; } ;
struct pfkey_sock {TYPE_2__ dump; } ;


 int EBUSY ;
 int EINVAL ;
 int pfkey_do_dump (struct pfkey_sock*) ;
 int * pfkey_dump_sa ;
 int pfkey_dump_sa_done ;
 scalar_t__ pfkey_satype2proto (int ) ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 int xfrm_state_walk_init (int *,scalar_t__) ;

__attribute__((used)) static int pfkey_dump(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 u8 proto;
 struct pfkey_sock *pfk = pfkey_sk(sk);

 if (pfk->dump.dump != ((void*)0))
  return -EBUSY;

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0)
  return -EINVAL;

 pfk->dump.msg_version = hdr->sadb_msg_version;
 pfk->dump.msg_pid = hdr->sadb_msg_pid;
 pfk->dump.dump = pfkey_dump_sa;
 pfk->dump.done = pfkey_dump_sa_done;
 xfrm_state_walk_init(&pfk->dump.u.state, proto);

 return pfkey_do_dump(pfk);
}
