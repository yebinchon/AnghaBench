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
struct TYPE_2__ {int /*<<< orphan*/ * targ; int /*<<< orphan*/ * log; int /*<<< orphan*/ * err; int /*<<< orphan*/ * out; } ;

/* Variables and functions */
 int /*<<< orphan*/ * gdb_stderr ; 
 int /*<<< orphan*/ * gdb_stdlog ; 
 int /*<<< orphan*/ * gdb_stdout ; 
 int /*<<< orphan*/ * gdb_stdtarg ; 
 TYPE_1__ saved_output ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* Only delete one of the files -- they are all set to the same
     value.  */
  FUNC0 (gdb_stdout);
  gdb_stdout = saved_output.out;
  gdb_stderr = saved_output.err;
  gdb_stdlog = saved_output.log;
  gdb_stdtarg = saved_output.targ;
  saved_output.out = NULL;
  saved_output.err = NULL;
  saved_output.log = NULL;
  saved_output.targ = NULL;

  FUNC1 (uiout, NULL);
}