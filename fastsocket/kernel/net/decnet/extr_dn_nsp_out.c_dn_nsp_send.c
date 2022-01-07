
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;int sk_err; int sk_route_caps; int sk_dst_cache; int sk_bound_dev_if; } ;
struct sk_buff {struct sock* sk; } ;
struct flowi {int proto; void* fld_dst; void* fld_src; int oif; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_scp {int peer; int addr; int stamp; } ;
typedef int fl ;
struct TYPE_2__ {int features; } ;


 int DNPROTO_NSP ;
 struct dn_scp* DN_SK (struct sock*) ;
 int EHOSTUNREACH ;
 int SOCK_DEAD ;
 scalar_t__ dn_route_output_sock (int *,struct flowi*,struct sock*,int ) ;
 void* dn_saddr2dn (int *) ;
 int dn_sk_ports_copy (struct flowi*,struct dn_scp*) ;
 int dst_output (struct sk_buff*) ;
 int jiffies ;
 int memset (struct flowi*,int ,int) ;
 struct dst_entry* sk_dst_check (struct sock*,int ) ;
 struct dst_entry* sk_dst_get (struct sock*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_nsp_send(struct sk_buff *skb)
{
 struct sock *sk = skb->sk;
 struct dn_scp *scp = DN_SK(sk);
 struct dst_entry *dst;
 struct flowi fl;

 skb_reset_transport_header(skb);
 scp->stamp = jiffies;

 dst = sk_dst_check(sk, 0);
 if (dst) {
try_again:
  skb_dst_set(skb, dst);
  dst_output(skb);
  return;
 }

 memset(&fl, 0, sizeof(fl));
 fl.oif = sk->sk_bound_dev_if;
 fl.fld_src = dn_saddr2dn(&scp->addr);
 fl.fld_dst = dn_saddr2dn(&scp->peer);
 dn_sk_ports_copy(&fl, scp);
 fl.proto = DNPROTO_NSP;
 if (dn_route_output_sock(&sk->sk_dst_cache, &fl, sk, 0) == 0) {
  dst = sk_dst_get(sk);
  sk->sk_route_caps = dst->dev->features;
  goto try_again;
 }

 sk->sk_err = EHOSTUNREACH;
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);
}
