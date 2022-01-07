
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_opt_hdr {scalar_t__ nd_opt_type; } ;


 scalar_t__ ND_OPT_RDNSS ;

__attribute__((used)) static inline int ndisc_is_useropt(struct nd_opt_hdr *opt)
{
 return (opt->nd_opt_type == ND_OPT_RDNSS);
}
