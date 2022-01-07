
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndmsg {int dummy; } ;
struct nda_cacheinfo {int dummy; } ;


 int MAX_ADDR_LEN ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t neigh_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct ndmsg))
        + nla_total_size(MAX_ADDR_LEN)
        + nla_total_size(MAX_ADDR_LEN)
        + nla_total_size(sizeof(struct nda_cacheinfo))
        + nla_total_size(4);
}
