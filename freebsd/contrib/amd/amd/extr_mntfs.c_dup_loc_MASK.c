#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ al_mnt; int /*<<< orphan*/  al_refc; } ;
typedef  TYPE_1__ am_loc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

am_loc *
FUNC1(am_loc *loc)
{
  loc->al_refc++;
  if (loc->al_mnt) {
    FUNC0(loc->al_mnt);
  }
  return loc;
}