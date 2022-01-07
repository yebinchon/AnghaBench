
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_header {int dummy; } ;
struct ovs_dp_stats {int dummy; } ;


 int IFNAMSIZ ;
 size_t NLMSG_ALIGN (int) ;
 scalar_t__ nla_total_size (int) ;

__attribute__((used)) static size_t ovs_dp_cmd_msg_size(void)
{
 size_t msgsize = NLMSG_ALIGN(sizeof(struct ovs_header));

 msgsize += nla_total_size(IFNAMSIZ);
 msgsize += nla_total_size(sizeof(struct ovs_dp_stats));

 return msgsize;
}
