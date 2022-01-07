
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {scalar_t__ nla_type; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setbcncfg ) (struct net_device*,int,int ) ;int (* setbcnrp ) (struct net_device*,scalar_t__,int ) ;} ;


 size_t DCB_ATTR_BCN ;
 int DCB_BCN_ATTR_BCNA_0 ;
 int DCB_BCN_ATTR_MAX ;
 int DCB_BCN_ATTR_RI ;
 int DCB_BCN_ATTR_RP_0 ;
 int DCB_BCN_ATTR_RP_7 ;
 int DCB_CMD_BCN_SCFG ;
 int EINVAL ;
 int RTM_SETDCB ;
 int dcbnl_pfc_up_nest ;
 int dcbnl_reply (int ,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int stub1 (struct net_device*,scalar_t__,int ) ;
 int stub2 (struct net_device*,int,int ) ;

__attribute__((used)) static int dcbnl_bcn_setcfg(struct net_device *netdev, struct nlattr **tb,
                            u32 pid, u32 seq, u16 flags)
{
 struct nlattr *data[DCB_BCN_ATTR_MAX + 1];
 int i;
 int ret = -EINVAL;
 u8 value_byte;
 u32 value_int;

 if (!tb[DCB_ATTR_BCN] || !netdev->dcbnl_ops->setbcncfg ||
     !netdev->dcbnl_ops->setbcnrp)
  return ret;

 ret = nla_parse_nested(data, DCB_BCN_ATTR_MAX,
                        tb[DCB_ATTR_BCN],
                        dcbnl_pfc_up_nest);
 if (ret)
  goto err;

 for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
  if (data[i] == ((void*)0))
   continue;
  value_byte = nla_get_u8(data[i]);
  netdev->dcbnl_ops->setbcnrp(netdev,
   data[i]->nla_type - DCB_BCN_ATTR_RP_0, value_byte);
 }

 for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
  if (data[i] == ((void*)0))
   continue;
  value_int = nla_get_u32(data[i]);
  netdev->dcbnl_ops->setbcncfg(netdev,
                                      i, value_int);
 }

 ret = dcbnl_reply(0, RTM_SETDCB, DCB_CMD_BCN_SCFG, DCB_ATTR_BCN,
                   pid, seq, flags);
err:
 return ret;
}
