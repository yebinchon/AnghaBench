
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct netlbl_audit {int dummy; } ;
struct net {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;




 int EPFNOSUPPORT ;
 int netlbl_unlhsh_remove (struct net*,char const*,void const*,void const*,int,struct netlbl_audit*) ;

int netlbl_cfg_unlbl_static_del(struct net *net,
    const char *dev_name,
    const void *addr,
    const void *mask,
    u16 family,
    struct netlbl_audit *audit_info)
{
 u32 addr_len;

 switch (family) {
 case 129:
  addr_len = sizeof(struct in_addr);
  break;
 case 128:
  addr_len = sizeof(struct in6_addr);
  break;
 default:
  return -EPFNOSUPPORT;
 }

 return netlbl_unlhsh_remove(net,
        dev_name, addr, mask, addr_len,
        audit_info);
}
