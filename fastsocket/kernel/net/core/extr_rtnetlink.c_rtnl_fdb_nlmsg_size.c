
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndmsg {int dummy; } ;


 int ETH_ALEN ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int ) ;

__attribute__((used)) static inline size_t rtnl_fdb_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct ndmsg)) + nla_total_size(ETH_ALEN);
}
