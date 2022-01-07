
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__ ip_addr; struct TYPE_3__* ip_next; } ;
typedef TYPE_1__ addrlist ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* localnets ;

int
is_interface_local(u_long netnum)
{
  addrlist *al;

  for (al = localnets; al; al = al->ip_next) {
    if (al->ip_addr == netnum)
      return TRUE;
  }
  return FALSE;
}
