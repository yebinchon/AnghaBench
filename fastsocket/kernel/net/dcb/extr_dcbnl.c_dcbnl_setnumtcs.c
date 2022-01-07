
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setnumtcs ) (struct net_device*,int,int ) ;} ;


 size_t DCB_ATTR_NUMTCS ;
 int DCB_CMD_SNUMTCS ;
 int DCB_NUMTCS_ATTR_ALL ;
 int DCB_NUMTCS_ATTR_MAX ;
 int EINVAL ;
 int RTM_SETDCB ;
 int dcbnl_numtcs_nest ;
 int dcbnl_reply (int,int ,int ,size_t,int ,int ,int ) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;
 int stub1 (struct net_device*,int,int ) ;

__attribute__((used)) static int dcbnl_setnumtcs(struct net_device *netdev, struct nlattr **tb,
                           u32 pid, u32 seq, u16 flags)
{
 struct nlattr *data[DCB_NUMTCS_ATTR_MAX + 1];
 int ret = -EINVAL;
 u8 value;
 int i;

 if (!tb[DCB_ATTR_NUMTCS] || !netdev->dcbnl_ops->setnumtcs)
  return ret;

 ret = nla_parse_nested(data, DCB_NUMTCS_ATTR_MAX, tb[DCB_ATTR_NUMTCS],
                        dcbnl_numtcs_nest);

 if (ret) {
  ret = -EINVAL;
  goto err;
 }

 for (i = DCB_NUMTCS_ATTR_ALL+1; i <= DCB_NUMTCS_ATTR_MAX; i++) {
  if (data[i] == ((void*)0))
   continue;

  value = nla_get_u8(data[i]);

  ret = netdev->dcbnl_ops->setnumtcs(netdev, i, value);

  if (ret)
   goto operr;
 }

operr:
 ret = dcbnl_reply(!!ret, RTM_SETDCB, DCB_CMD_SNUMTCS,
                   DCB_ATTR_NUMTCS, pid, seq, flags);

err:
 return ret;
}
