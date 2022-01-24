#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__ ip_addr; struct TYPE_3__* ip_next; } ;
typedef  TYPE_1__ addrlist ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_1__* localnets ; 

int
FUNC0(u_long netnum)
{
  addrlist *al;

  for (al = localnets; al; al = al->ip_next) {
    if (al->ip_addr == netnum)
      return TRUE;
  }
  return FALSE;
}