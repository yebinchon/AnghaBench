
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
typedef int __be32 ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ ETH_ALEN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_GRE_REMOTE ;
 int ipgre_tunnel_validate (struct nlattr**,struct nlattr**) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int *,int ,int) ;
 int nla_data (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static int ipgre_tap_validate(struct nlattr *tb[], struct nlattr *data[])
{
 __be32 daddr;

 if (tb[IFLA_ADDRESS]) {
  if (nla_len(tb[IFLA_ADDRESS]) != ETH_ALEN)
   return -EINVAL;
  if (!is_valid_ether_addr(nla_data(tb[IFLA_ADDRESS])))
   return -EADDRNOTAVAIL;
 }

 if (!data)
  goto out;

 if (data[IFLA_GRE_REMOTE]) {
  memcpy(&daddr, nla_data(data[IFLA_GRE_REMOTE]), 4);
  if (!daddr)
   return -EINVAL;
 }

out:
 return ipgre_tunnel_validate(tb, data);
}
