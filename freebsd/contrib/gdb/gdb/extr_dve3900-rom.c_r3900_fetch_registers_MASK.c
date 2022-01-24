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
struct TYPE_2__ {int badvaddr; int cause; } ;

/* Variables and functions */
 int PS_REGNUM ; 
 int /*<<< orphan*/  cause_fields ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  status_fields ; 

__attribute__((used)) static void
FUNC4 (int regno)
{
  if (regno == FUNC2 (current_gdbarch)->badvaddr)
    FUNC0 ();
  else if (regno == PS_REGNUM)
    FUNC1 (PS_REGNUM, status_fields);
  else if (regno == FUNC2 (current_gdbarch)->cause)
    FUNC1 (FUNC2 (current_gdbarch)->cause,
			      cause_fields);
  else
    FUNC3 (regno);
}