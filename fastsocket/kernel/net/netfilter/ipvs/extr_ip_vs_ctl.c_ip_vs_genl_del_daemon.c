
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t IPVS_DAEMON_ATTR_STATE ;
 int nla_get_u32 (struct nlattr*) ;
 int stop_sync_thread (int ) ;

__attribute__((used)) static int ip_vs_genl_del_daemon(struct nlattr **attrs)
{
 if (!attrs[IPVS_DAEMON_ATTR_STATE])
  return -EINVAL;

 return stop_sync_thread(nla_get_u32(attrs[IPVS_DAEMON_ATTR_STATE]));
}
