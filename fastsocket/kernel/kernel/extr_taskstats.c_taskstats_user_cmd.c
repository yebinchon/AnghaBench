
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int snd_pid; } ;
typedef int cpumask_var_t ;


 int DEREGISTER ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REGISTER ;
 size_t TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK ;
 size_t TASKSTATS_CMD_ATTR_PID ;
 size_t TASKSTATS_CMD_ATTR_REGISTER_CPUMASK ;
 size_t TASKSTATS_CMD_ATTR_TGID ;
 int TASKSTATS_CMD_NEW ;
 int TASKSTATS_TYPE_PID ;
 int TASKSTATS_TYPE_TGID ;
 int add_del_listener (int ,int ,int ) ;
 int alloc_cpumask_var (int *,int ) ;
 int fill_pid (int ,int *,struct taskstats*) ;
 int fill_tgid (int ,int *,struct taskstats*) ;
 int free_cpumask_var (int ) ;
 struct taskstats* mk_reply (struct sk_buff*,int ,int ) ;
 int nla_get_u32 (scalar_t__) ;
 size_t nla_total_size (int) ;
 int nlmsg_free (struct sk_buff*) ;
 int parse (scalar_t__,int ) ;
 int prepare_reply (struct genl_info*,int ,struct sk_buff**,size_t) ;
 int send_reply (struct sk_buff*,struct genl_info*) ;

__attribute__((used)) static int taskstats_user_cmd(struct sk_buff *skb, struct genl_info *info)
{
 int rc;
 struct sk_buff *rep_skb;
 struct taskstats *stats;
 size_t size;
 cpumask_var_t mask;

 if (!alloc_cpumask_var(&mask, GFP_KERNEL))
  return -ENOMEM;

 rc = parse(info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK], mask);
 if (rc < 0)
  goto free_return_rc;
 if (rc == 0) {
  rc = add_del_listener(info->snd_pid, mask, REGISTER);
  goto free_return_rc;
 }

 rc = parse(info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK], mask);
 if (rc < 0)
  goto free_return_rc;
 if (rc == 0) {
  rc = add_del_listener(info->snd_pid, mask, DEREGISTER);
free_return_rc:
  free_cpumask_var(mask);
  return rc;
 }
 free_cpumask_var(mask);




 size = nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(struct taskstats)) + nla_total_size(0);

 rc = prepare_reply(info, TASKSTATS_CMD_NEW, &rep_skb, size);
 if (rc < 0)
  return rc;

 rc = -EINVAL;
 if (info->attrs[TASKSTATS_CMD_ATTR_PID]) {
  u32 pid = nla_get_u32(info->attrs[TASKSTATS_CMD_ATTR_PID]);
  stats = mk_reply(rep_skb, TASKSTATS_TYPE_PID, pid);
  if (!stats)
   goto err;

  rc = fill_pid(pid, ((void*)0), stats);
  if (rc < 0)
   goto err;
 } else if (info->attrs[TASKSTATS_CMD_ATTR_TGID]) {
  u32 tgid = nla_get_u32(info->attrs[TASKSTATS_CMD_ATTR_TGID]);
  stats = mk_reply(rep_skb, TASKSTATS_TYPE_TGID, tgid);
  if (!stats)
   goto err;

  rc = fill_tgid(tgid, ((void*)0), stats);
  if (rc < 0)
   goto err;
 } else
  goto err;

 return send_reply(rep_skb, info);
err:
 nlmsg_free(rep_skb);
 return rc;
}
