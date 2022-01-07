
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {int e_mask; char* e_hwaddr; int e_netmask; TYPE_1__ e_inaddr; } ;
typedef TYPE_2__ ether_if ;





 scalar_t__ INADDR_NONE ;
 int XFREE (char*) ;
 int abort () ;
 char** ether_if_strings ;
 int fsi_error (char*,char*) ;
 int htonl (int ) ;
 scalar_t__ inet_addr (char*) ;
 int sscanf (char*,char*,int *) ;

void
set_ether_if(ether_if *ep, int k, char *v)
{
  int m = 1 << k;

  if (ep->e_mask & m) {
    fsi_error("netif field \"%s\" already set", ether_if_strings[k]);
    return;
  }
  ep->e_mask |= m;

  switch (k) {

  case 129:{
      ep->e_inaddr.s_addr = inet_addr(v);
      if ((int) ep->e_inaddr.s_addr == (int) INADDR_NONE)
 fsi_error("malformed IP dotted quad: %s", v);
      XFREE(v);
    }
    break;

  case 128:{
      u_long nm = 0;

      if ((sscanf(v, "0x%lx", &nm) == 1 || sscanf(v, "%lx", &nm) == 1) && nm != 0)
 ep->e_netmask = htonl(nm);
      else
 fsi_error("malformed netmask: %s", v);
      XFREE(v);
    }
    break;

  case 130:
    ep->e_hwaddr = v;
    break;

  default:
    abort();
    break;
  }
}
