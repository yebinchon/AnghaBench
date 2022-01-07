
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pub; scalar_t__* prv; } ;
struct sockaddr_atmsvc {scalar_t__ sas_family; TYPE_1__ sas_addr; } ;


 scalar_t__ AF_ATMSVC ;
 int ATM_E164_LEN ;
 int EAFNOSUPPORT ;
 int EINVAL ;

__attribute__((used)) static int check_addr(const struct sockaddr_atmsvc *addr)
{
 int i;

 if (addr->sas_family != AF_ATMSVC)
  return -EAFNOSUPPORT;
 if (!*addr->sas_addr.pub)
  return *addr->sas_addr.prv ? 0 : -EINVAL;
 for (i = 1; i < ATM_E164_LEN + 1; i++)
  if (!addr->sas_addr.pub[i])
   return 0;
 return -EINVAL;
}
