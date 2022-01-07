
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int len; int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct netlink_callback {void** args; TYPE_1__* nlh; int skb; } ;
struct flow_table {int dummy; } ;
struct datapath {int table; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int ENODEV ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int OVS_FLOW_CMD_NEW ;
 struct ovs_header* genlmsg_data (int ) ;
 struct datapath* get_dp (int ,int ) ;
 int nlmsg_data (TYPE_1__*) ;
 scalar_t__ ovs_flow_cmd_fill_info (struct sw_flow*,struct datapath*,struct sk_buff*,int ,int ,int ,int ) ;
 struct sw_flow* ovs_flow_tbl_next (struct flow_table*,void**,void**) ;
 int ovs_lock () ;
 int ovs_unlock () ;
 struct flow_table* ovsl_dereference (int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_flow_cmd_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct ovs_header *ovs_header = genlmsg_data(nlmsg_data(cb->nlh));
 struct datapath *dp;
 struct flow_table *table;

 ovs_lock();
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 if (!dp) {
  ovs_unlock();
  return -ENODEV;
 }

 table = ovsl_dereference(dp->table);

 for (;;) {
  struct sw_flow *flow;
  u32 bucket, obj;

  bucket = cb->args[0];
  obj = cb->args[1];
  flow = ovs_flow_tbl_next(table, &bucket, &obj);
  if (!flow)
   break;

  if (ovs_flow_cmd_fill_info(flow, dp, skb,
        NETLINK_CB(cb->skb).pid,
        cb->nlh->nlmsg_seq, NLM_F_MULTI,
        OVS_FLOW_CMD_NEW) < 0)
   break;

  cb->args[0] = bucket;
  cb->args[1] = obj;
 }
 ovs_unlock();
 return skb->len;
}
