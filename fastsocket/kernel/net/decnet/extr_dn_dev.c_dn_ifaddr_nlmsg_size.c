
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrmsg {int dummy; } ;


 int IFNAMSIZ ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t dn_ifaddr_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct ifaddrmsg))
        + nla_total_size(IFNAMSIZ)
        + nla_total_size(2)
        + nla_total_size(2);
}
