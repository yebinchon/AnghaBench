
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sw_flow_key {int dummy; } ;
struct sw_flow_actions {int sk; int lock; int sf_acts; } ;
struct sw_flow {int sk; int lock; int sf_acts; } ;
struct sk_buff {int sk; int lock; int sf_acts; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; TYPE_2__* nlhdr; TYPE_1__* genlhdr; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct flow_table {int sk; int lock; int sf_acts; } ;
struct datapath {int table; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {int genl_sock; } ;
struct TYPE_8__ {int nlmsg_flags; } ;
struct TYPE_7__ {scalar_t__ cmd; } ;


 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct sw_flow_actions*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 size_t OVS_FLOW_ATTR_ACTIONS ;
 size_t OVS_FLOW_ATTR_CLEAR ;
 size_t OVS_FLOW_ATTR_KEY ;
 scalar_t__ OVS_FLOW_CMD_NEW ;
 scalar_t__ OVS_FLOW_CMD_SET ;
 int PTR_ERR (struct sw_flow_actions*) ;
 int clear_stats (struct sw_flow_actions*) ;
 struct datapath* get_dp (TYPE_3__*,int ) ;
 int kfree (struct sw_flow_actions*) ;
 int netlink_set_err (int ,int ,int ,int) ;
 int nla_len (struct nlattr*) ;
 TYPE_4__ ovs_dp_flow_multicast_group ;
 struct sw_flow_actions* ovs_flow_actions_alloc (int ) ;
 struct sw_flow_actions* ovs_flow_alloc () ;
 struct sw_flow_actions* ovs_flow_cmd_build_info (struct sw_flow_actions*,struct datapath*,int ,int ,scalar_t__) ;
 int ovs_flow_deferred_free_acts (struct sw_flow_actions*) ;
 int ovs_flow_from_nlattrs (struct sw_flow_key*,int*,struct nlattr*) ;
 int ovs_flow_tbl_deferred_destroy (struct sw_flow_actions*) ;
 struct sw_flow_actions* ovs_flow_tbl_expand (struct sw_flow_actions*) ;
 int ovs_flow_tbl_insert (struct sw_flow_actions*,struct sw_flow_actions*,struct sw_flow_key*,int) ;
 struct sw_flow_actions* ovs_flow_tbl_lookup (struct sw_flow_actions*,struct sw_flow_key*,int) ;
 scalar_t__ ovs_flow_tbl_need_to_expand (struct sw_flow_actions*) ;
 int ovs_lock () ;
 int ovs_notify (struct sw_flow_actions*,struct genl_info*,TYPE_4__*) ;
 int ovs_unlock () ;
 struct sw_flow_actions* ovsl_dereference (int ) ;
 int rcu_assign_pointer (int ,struct sw_flow_actions*) ;
 TYPE_3__* sock_net (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int validate_and_copy_actions (struct nlattr*,struct sw_flow_key*,int ,struct sw_flow_actions**) ;

__attribute__((used)) static int ovs_flow_cmd_new_or_set(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct sw_flow_key key;
 struct sw_flow *flow;
 struct sk_buff *reply;
 struct datapath *dp;
 struct flow_table *table;
 struct sw_flow_actions *acts = ((void*)0);
 int error;
 int key_len;


 error = -EINVAL;
 if (!a[OVS_FLOW_ATTR_KEY])
  goto error;
 error = ovs_flow_from_nlattrs(&key, &key_len, a[OVS_FLOW_ATTR_KEY]);
 if (error)
  goto error;


 if (a[OVS_FLOW_ATTR_ACTIONS]) {
  acts = ovs_flow_actions_alloc(nla_len(a[OVS_FLOW_ATTR_ACTIONS]));
  error = PTR_ERR(acts);
  if (IS_ERR(acts))
   goto error;

  error = validate_and_copy_actions(a[OVS_FLOW_ATTR_ACTIONS], &key, 0, &acts);
  if (error)
   goto err_kfree;
 } else if (info->genlhdr->cmd == OVS_FLOW_CMD_NEW) {
  error = -EINVAL;
  goto error;
 }

 ovs_lock();
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 error = -ENODEV;
 if (!dp)
  goto err_unlock_ovs;

 table = ovsl_dereference(dp->table);
 flow = ovs_flow_tbl_lookup(table, &key, key_len);
 if (!flow) {

  error = -ENOENT;
  if (info->genlhdr->cmd == OVS_FLOW_CMD_SET)
   goto err_unlock_ovs;


  if (ovs_flow_tbl_need_to_expand(table)) {
   struct flow_table *new_table;

   new_table = ovs_flow_tbl_expand(table);
   if (!IS_ERR(new_table)) {
    rcu_assign_pointer(dp->table, new_table);
    ovs_flow_tbl_deferred_destroy(table);
    table = ovsl_dereference(dp->table);
   }
  }


  flow = ovs_flow_alloc();
  if (IS_ERR(flow)) {
   error = PTR_ERR(flow);
   goto err_unlock_ovs;
  }
  clear_stats(flow);

  rcu_assign_pointer(flow->sf_acts, acts);


  ovs_flow_tbl_insert(table, flow, &key, key_len);

  reply = ovs_flow_cmd_build_info(flow, dp, info->snd_pid,
      info->snd_seq,
      OVS_FLOW_CMD_NEW);
 } else {

  struct sw_flow_actions *old_acts;







  error = -EEXIST;
  if (info->genlhdr->cmd == OVS_FLOW_CMD_NEW &&
      info->nlhdr->nlmsg_flags & (NLM_F_CREATE | NLM_F_EXCL))
   goto err_unlock_ovs;


  old_acts = ovsl_dereference(flow->sf_acts);
  rcu_assign_pointer(flow->sf_acts, acts);
  ovs_flow_deferred_free_acts(old_acts);

  reply = ovs_flow_cmd_build_info(flow, dp, info->snd_pid,
            info->snd_seq, OVS_FLOW_CMD_NEW);


  if (a[OVS_FLOW_ATTR_CLEAR]) {
   spin_lock_bh(&flow->lock);
   clear_stats(flow);
   spin_unlock_bh(&flow->lock);
  }
 }
 ovs_unlock();

 if (!IS_ERR(reply))
  ovs_notify(reply, info, &ovs_dp_flow_multicast_group);
 else
  netlink_set_err(sock_net(skb->sk)->genl_sock, 0,
    ovs_dp_flow_multicast_group.id, PTR_ERR(reply));
 return 0;

err_unlock_ovs:
 ovs_unlock();
err_kfree:
 kfree(acts);
error:
 return error;
}
