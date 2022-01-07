
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_service_user_kern {scalar_t__ fwmark; int af; int port; int addr; int protocol; } ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_dest_user_kern {int dummy; } ;
struct genl_info {int * attrs; TYPE_1__* genlhdr; } ;
struct TYPE_2__ {int cmd; } ;


 int EEXIST ;
 int EINVAL ;
 int ESRCH ;
 size_t IPVS_CMD_ATTR_DAEMON ;
 size_t IPVS_CMD_ATTR_DEST ;
 size_t IPVS_CMD_ATTR_SERVICE ;
 int IPVS_CMD_DEL_DAEMON ;


 int IPVS_CMD_FLUSH ;
 int IPVS_CMD_NEW_DAEMON ;


 int IPVS_CMD_SET_CONFIG ;



 int IPVS_DAEMON_ATTR_MAX ;
 int __ip_vs_mutex ;
 struct ip_vs_service* __ip_vs_service_get (int ,int ,int *,int ) ;
 struct ip_vs_service* __ip_vs_svc_fwm_get (int ,scalar_t__) ;
 int ip_vs_add_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_add_service (struct ip_vs_service_user_kern*,struct ip_vs_service**) ;
 int ip_vs_daemon_policy ;
 int ip_vs_del_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_del_service (struct ip_vs_service*) ;
 int ip_vs_edit_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_edit_service (struct ip_vs_service*,struct ip_vs_service_user_kern*) ;
 int ip_vs_flush () ;
 int ip_vs_genl_del_daemon (struct nlattr**) ;
 int ip_vs_genl_new_daemon (struct nlattr**) ;
 int ip_vs_genl_parse_dest (struct ip_vs_dest_user_kern*,int ,int) ;
 int ip_vs_genl_parse_service (struct ip_vs_service_user_kern*,int ,int) ;
 int ip_vs_genl_set_config (int *) ;
 int ip_vs_service_put (struct ip_vs_service*) ;
 int ip_vs_zero_all () ;
 int ip_vs_zero_service (struct ip_vs_service*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,int ,int ) ;

__attribute__((used)) static int ip_vs_genl_set_cmd(struct sk_buff *skb, struct genl_info *info)
{
 struct ip_vs_service *svc = ((void*)0);
 struct ip_vs_service_user_kern usvc;
 struct ip_vs_dest_user_kern udest;
 int ret = 0, cmd;
 int need_full_svc = 0, need_full_dest = 0;

 cmd = info->genlhdr->cmd;

 mutex_lock(&__ip_vs_mutex);

 if (cmd == IPVS_CMD_FLUSH) {
  ret = ip_vs_flush();
  goto out;
 } else if (cmd == IPVS_CMD_SET_CONFIG) {
  ret = ip_vs_genl_set_config(info->attrs);
  goto out;
 } else if (cmd == IPVS_CMD_NEW_DAEMON ||
     cmd == IPVS_CMD_DEL_DAEMON) {

  struct nlattr *daemon_attrs[IPVS_DAEMON_ATTR_MAX + 1];

  if (!info->attrs[IPVS_CMD_ATTR_DAEMON] ||
      nla_parse_nested(daemon_attrs, IPVS_DAEMON_ATTR_MAX,
         info->attrs[IPVS_CMD_ATTR_DAEMON],
         ip_vs_daemon_policy)) {
   ret = -EINVAL;
   goto out;
  }

  if (cmd == IPVS_CMD_NEW_DAEMON)
   ret = ip_vs_genl_new_daemon(daemon_attrs);
  else
   ret = ip_vs_genl_del_daemon(daemon_attrs);
  goto out;
 } else if (cmd == 128 &&
     !info->attrs[IPVS_CMD_ATTR_SERVICE]) {
  ret = ip_vs_zero_all();
  goto out;
 }




 if (cmd == 131 || cmd == 129)
  need_full_svc = 1;

 ret = ip_vs_genl_parse_service(&usvc,
           info->attrs[IPVS_CMD_ATTR_SERVICE],
           need_full_svc);
 if (ret)
  goto out;


 if (usvc.fwmark == 0)
  svc = __ip_vs_service_get(usvc.af, usvc.protocol,
       &usvc.addr, usvc.port);
 else
  svc = __ip_vs_svc_fwm_get(usvc.af, usvc.fwmark);


 if ((cmd != 131) && (svc == ((void*)0))) {
  ret = -ESRCH;
  goto out;
 }




 if (cmd == 132 || cmd == 130 ||
     cmd == 134) {
  if (cmd != 134)
   need_full_dest = 1;

  ret = ip_vs_genl_parse_dest(&udest,
         info->attrs[IPVS_CMD_ATTR_DEST],
         need_full_dest);
  if (ret)
   goto out;
 }

 switch (cmd) {
 case 131:
  if (svc == ((void*)0))
   ret = ip_vs_add_service(&usvc, &svc);
  else
   ret = -EEXIST;
  break;
 case 129:
  ret = ip_vs_edit_service(svc, &usvc);
  break;
 case 133:
  ret = ip_vs_del_service(svc);
  break;
 case 132:
  ret = ip_vs_add_dest(svc, &udest);
  break;
 case 130:
  ret = ip_vs_edit_dest(svc, &udest);
  break;
 case 134:
  ret = ip_vs_del_dest(svc, &udest);
  break;
 case 128:
  ret = ip_vs_zero_service(svc);
  break;
 default:
  ret = -EINVAL;
 }

out:
 if (svc)
  ip_vs_service_put(svc);
 mutex_unlock(&__ip_vs_mutex);

 return ret;
}
