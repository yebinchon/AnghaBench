
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct sadb_address {int sadb_address_len; int sadb_address_prefixlen; } ;




 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;

__attribute__((used)) static int verify_address_len(void *p)
{
 struct sadb_address *sp = p;
 struct sockaddr *addr = (struct sockaddr *)(sp + 1);
 struct sockaddr_in *sin;



 int len;

 switch (addr->sa_family) {
 case 129:
  len = DIV_ROUND_UP(sizeof(*sp) + sizeof(*sin), sizeof(uint64_t));
  if (sp->sadb_address_len != len ||
      sp->sadb_address_prefixlen > 32)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
  break;
 }

 return 0;
}
