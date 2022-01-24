#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {int e_mask; char* e_hwaddr; int /*<<< orphan*/  e_netmask; TYPE_1__ e_inaddr; } ;
typedef  TYPE_2__ ether_if ;

/* Variables and functions */
#define  EF_HWADDR 130 
#define  EF_INADDR 129 
#define  EF_NETMASK 128 
 scalar_t__ INADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char** ether_if_strings ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 

void
FUNC6(ether_if *ep, int k, char *v)
{
  int m = 1 << k;

  if (ep->e_mask & m) {
    FUNC2("netif field \"%s\" already set", ether_if_strings[k]);
    return;
  }
  ep->e_mask |= m;

  switch (k) {

  case EF_INADDR:{
      ep->e_inaddr.s_addr = FUNC4(v);
      if ((int) ep->e_inaddr.s_addr == (int) INADDR_NONE)
	FUNC2("malformed IP dotted quad: %s", v);
      FUNC0(v);
    }
    break;

  case EF_NETMASK:{
      u_long nm = 0;

      if ((FUNC5(v, "0x%lx", &nm) == 1 || FUNC5(v, "%lx", &nm) == 1) && nm != 0)
	ep->e_netmask = FUNC3(nm);
      else
	FUNC2("malformed netmask: %s", v);
      FUNC0(v);
    }
    break;

  case EF_HWADDR:
    ep->e_hwaddr = v;
    break;

  default:
    FUNC1();
    break;
  }
}