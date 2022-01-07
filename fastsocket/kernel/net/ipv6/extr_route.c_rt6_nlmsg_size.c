
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmsg {int dummy; } ;
struct rta_cacheinfo {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 int RTAX_MAX ;
 int nla_total_size (int) ;

__attribute__((used)) static inline size_t rt6_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct rtmsg))
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + RTAX_MAX * nla_total_size(4)
        + nla_total_size(sizeof(struct rta_cacheinfo));
}
