
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tnl_ptk_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct gre_cisco_protocol {scalar_t__ (* err_handler ) (struct sk_buff*,int ,struct tnl_ptk_info*) ;} ;


 int GRE_IP_PROTO_MAX ;
 scalar_t__ PACKET_RCVD ;
 int * gre_cisco_proto_list ;
 scalar_t__ parse_gre_header (struct sk_buff*,struct tnl_ptk_info*,int*) ;
 struct gre_cisco_protocol* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ stub1 (struct sk_buff*,int ,struct tnl_ptk_info*) ;

__attribute__((used)) static void gre_cisco_err(struct sk_buff *skb, u32 info)
{
 struct tnl_ptk_info tpi;
 bool csum_err = 0;
 int i;

 if (parse_gre_header(skb, &tpi, &csum_err)) {
  if (!csum_err)
   return;
 }

 rcu_read_lock();
 for (i = 0; i < GRE_IP_PROTO_MAX; i++) {
  struct gre_cisco_protocol *proto;

  proto = rcu_dereference(gre_cisco_proto_list[i]);
  if (!proto)
   continue;

  if (proto->err_handler(skb, info, &tpi) == PACKET_RCVD)
   goto out;

 }
out:
 rcu_read_unlock();
}
