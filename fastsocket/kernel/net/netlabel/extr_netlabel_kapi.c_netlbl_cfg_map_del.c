
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netlbl_audit {int dummy; } ;



 int EINVAL ;
 int EPFNOSUPPORT ;
 int netlbl_domhsh_remove (char const*,struct netlbl_audit*) ;
 int netlbl_domhsh_remove_af4 (char const*,void const*,void const*,struct netlbl_audit*) ;

int netlbl_cfg_map_del(const char *domain,
         u16 family,
         const void *addr,
         const void *mask,
         struct netlbl_audit *audit_info)
{
 if (addr == ((void*)0) && mask == ((void*)0)) {
  return netlbl_domhsh_remove(domain, audit_info);
 } else if (addr != ((void*)0) && mask != ((void*)0)) {
  switch (family) {
  case 128:
   return netlbl_domhsh_remove_af4(domain, addr, mask,
       audit_info);
  default:
   return -EPFNOSUPPORT;
  }
 } else
  return -EINVAL;
}
