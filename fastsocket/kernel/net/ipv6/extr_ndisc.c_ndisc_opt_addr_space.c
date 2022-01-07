
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int type; scalar_t__ addr_len; } ;


 int NDISC_OPT_SPACE (scalar_t__) ;
 scalar_t__ ndisc_addr_option_pad (int ) ;

__attribute__((used)) static inline int ndisc_opt_addr_space(struct net_device *dev)
{
 return NDISC_OPT_SPACE(dev->addr_len + ndisc_addr_option_pad(dev->type));
}
