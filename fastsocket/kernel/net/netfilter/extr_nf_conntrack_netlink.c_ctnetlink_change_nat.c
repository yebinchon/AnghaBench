
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn {int dummy; } ;


 size_t CTA_NAT_DST ;
 size_t CTA_NAT_SRC ;
 int EOPNOTSUPP ;
 int IP_NAT_MANIP_DST ;
 int IP_NAT_MANIP_SRC ;
 int ctnetlink_parse_nat_setup (struct nf_conn*,int ,struct nlattr const* const) ;

__attribute__((used)) static int
ctnetlink_change_nat(struct nf_conn *ct, const struct nlattr * const cda[])
{
 return -EOPNOTSUPP;

}
