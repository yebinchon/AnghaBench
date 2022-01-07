
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_vs_timeout_user {int udp_timeout; int tcp_fin_timeout; int tcp_timeout; } ;
struct ip_vs_service {int dummy; } ;
struct genl_info {int * attrs; TYPE_1__* genlhdr; } ;
struct TYPE_2__ {int cmd; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 size_t IPVS_CMD_ATTR_SERVICE ;
 int IPVS_CMD_ATTR_TIMEOUT_TCP ;
 int IPVS_CMD_ATTR_TIMEOUT_TCP_FIN ;
 int IPVS_CMD_ATTR_TIMEOUT_UDP ;



 int IPVS_CMD_NEW_SERVICE ;
 int IPVS_CMD_SET_CONFIG ;
 int IPVS_CMD_SET_INFO ;
 int IPVS_INFO_ATTR_CONN_TAB_SIZE ;
 int IPVS_INFO_ATTR_VERSION ;
 int IP_VS_VERSION_CODE ;
 int IS_ERR (struct ip_vs_service*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int NLMSG_DEFAULT_SIZE ;
 int PTR_ERR (struct ip_vs_service*) ;
 int __ip_vs_get_timeouts (struct ip_vs_timeout_user*) ;
 int __ip_vs_mutex ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int ip_vs_conn_tab_size ;
 int ip_vs_genl_family ;
 int ip_vs_genl_fill_service (struct sk_buff*,struct ip_vs_service*) ;
 struct ip_vs_service* ip_vs_genl_find_service (int ) ;
 int ip_vs_service_put (struct ip_vs_service*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ip_vs_genl_get_cmd(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 void *reply;
 int ret, cmd, reply_cmd;

 cmd = info->genlhdr->cmd;

 if (cmd == 128)
  reply_cmd = IPVS_CMD_NEW_SERVICE;
 else if (cmd == 129)
  reply_cmd = IPVS_CMD_SET_INFO;
 else if (cmd == 130)
  reply_cmd = IPVS_CMD_SET_CONFIG;
 else {
  pr_err("unknown Generic Netlink command\n");
  return -EINVAL;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 mutex_lock(&__ip_vs_mutex);

 reply = genlmsg_put_reply(msg, info, &ip_vs_genl_family, 0, reply_cmd);
 if (reply == ((void*)0))
  goto nla_put_failure;

 switch (cmd) {
 case 128:
 {
  struct ip_vs_service *svc;

  svc = ip_vs_genl_find_service(info->attrs[IPVS_CMD_ATTR_SERVICE]);
  if (IS_ERR(svc)) {
   ret = PTR_ERR(svc);
   goto out_err;
  } else if (svc) {
   ret = ip_vs_genl_fill_service(msg, svc);
   ip_vs_service_put(svc);
   if (ret)
    goto nla_put_failure;
  } else {
   ret = -ESRCH;
   goto out_err;
  }

  break;
 }

 case 130:
 {
  struct ip_vs_timeout_user t;

  __ip_vs_get_timeouts(&t);
  break;
 }

 case 129:
  NLA_PUT_U32(msg, IPVS_INFO_ATTR_VERSION, IP_VS_VERSION_CODE);
  NLA_PUT_U32(msg, IPVS_INFO_ATTR_CONN_TAB_SIZE,
       ip_vs_conn_tab_size);
  break;
 }

 genlmsg_end(msg, reply);
 ret = genlmsg_reply(msg, info);
 goto out;

nla_put_failure:
 pr_err("not enough space in Netlink message\n");
 ret = -EMSGSIZE;

out_err:
 nlmsg_free(msg);
out:
 mutex_unlock(&__ip_vs_mutex);

 return ret;
}
