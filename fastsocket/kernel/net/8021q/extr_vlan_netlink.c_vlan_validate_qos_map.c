
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int IFLA_VLAN_QOS_MAX ;
 int nla_validate_nested (struct nlattr*,int ,int ) ;
 int vlan_map_policy ;

__attribute__((used)) static inline int vlan_validate_qos_map(struct nlattr *attr)
{
 if (!attr)
  return 0;
 return nla_validate_nested(attr, IFLA_VLAN_QOS_MAX, vlan_map_policy);
}
