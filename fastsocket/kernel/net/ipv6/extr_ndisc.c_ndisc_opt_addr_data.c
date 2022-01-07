
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ addr_len; int type; } ;
struct nd_opt_hdr {int nd_opt_len; } ;


 int NDISC_OPT_SPACE (scalar_t__) ;
 int ndisc_addr_option_pad (int ) ;

__attribute__((used)) static inline u8 *ndisc_opt_addr_data(struct nd_opt_hdr *p,
          struct net_device *dev)
{
 u8 *lladdr = (u8 *)(p + 1);
 int lladdrlen = p->nd_opt_len << 3;
 int prepad = ndisc_addr_option_pad(dev->type);
 if (lladdrlen != NDISC_OPT_SPACE(dev->addr_len + prepad))
  return ((void*)0);
 return (lladdr + prepad);
}
