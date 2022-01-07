
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t IPVS_DAEMON_ATTR_MCAST_IFN ;
 size_t IPVS_DAEMON_ATTR_STATE ;
 size_t IPVS_DAEMON_ATTR_SYNC_ID ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int start_sync_thread (int ,int ,int ) ;

__attribute__((used)) static int ip_vs_genl_new_daemon(struct nlattr **attrs)
{
 if (!(attrs[IPVS_DAEMON_ATTR_STATE] &&
       attrs[IPVS_DAEMON_ATTR_MCAST_IFN] &&
       attrs[IPVS_DAEMON_ATTR_SYNC_ID]))
  return -EINVAL;

 return start_sync_thread(nla_get_u32(attrs[IPVS_DAEMON_ATTR_STATE]),
     nla_data(attrs[IPVS_DAEMON_ATTR_MCAST_IFN]),
     nla_get_u32(attrs[IPVS_DAEMON_ATTR_SYNC_ID]));
}
