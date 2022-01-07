
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int buf ;
struct TYPE_3__ {int ip_addr; int ip_mask; struct TYPE_3__* ip_next; } ;
typedef TYPE_1__ addrlist ;


 int FALSE ;
 int TRUE ;
 int XLOG_INFO ;
 int inet_dquad (char*,int,int) ;
 TYPE_1__* localnets ;
 int plog (int ,char*,int ) ;

int
islocalnet(u_long addr)
{
  addrlist *al;

  for (al = localnets; al; al = al->ip_next)
    if (((addr ^ al->ip_addr) & al->ip_mask) == 0)
      return TRUE;
  return FALSE;
}
