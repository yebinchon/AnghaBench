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
struct TYPE_5__ {TYPE_1__* descr; } ;
struct TYPE_4__ {scalar_t__ gdbarch; scalar_t__ legacy_p; } ;

/* Variables and functions */
 scalar_t__ current_gdbarch ; 
 TYPE_2__* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,char*) ; 

void
FUNC3 (int regnum, char *buf)
{
  FUNC0 (current_regcache != NULL);
  FUNC0 (current_regcache->descr->gdbarch == current_gdbarch);
  if (current_regcache->descr->legacy_p)
    {
      FUNC1 (regnum, buf);
      return;
    }
  FUNC2 (current_regcache, regnum, buf);
}