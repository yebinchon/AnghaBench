#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cause; } ;

/* Variables and functions */
 int PS_REGNUM ; 
 int /*<<< orphan*/  cause_fields ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  status_fields ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (int regno)
{
  if (regno == PS_REGNUM)
    FUNC2 (PS_REGNUM, status_fields);
  else if (regno == FUNC0 (current_gdbarch)->cause)
    FUNC2 (FUNC0 (current_gdbarch)->cause,
			      cause_fields);
  else
    FUNC1 (regno);
}