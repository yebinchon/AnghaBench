#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ opaque_t ;
struct TYPE_5__ {scalar_t__ al_refc; scalar_t__ al_mnt; } ;
typedef  TYPE_1__ am_loc ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 

void
FUNC4(opaque_t arg)
{
  am_loc *loc = (am_loc *) arg;
  FUNC1("free_loc %p", loc);

  if (loc->al_refc <= 0) {
    FUNC3(XLOG_ERROR, "IGNORING free_loc for 0x%p", loc);
    return;
  }

  if (loc->al_mnt)
    FUNC2(loc->al_mnt);
  if (--loc->al_refc == 0) {
    FUNC0(loc);
  }
}