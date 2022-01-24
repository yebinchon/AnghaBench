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
struct TYPE_2__ {int /*<<< orphan*/ * core_read_registers; } ;

/* Variables and functions */
 scalar_t__ core_gdbarch ; 
 TYPE_1__* core_vec ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC4 (int regno)
{
  int status;

  if (!(core_gdbarch && FUNC2 (core_gdbarch))
      && (core_vec == NULL || core_vec->core_read_registers == NULL))
    {
      FUNC1 (gdb_stderr,
		     "Can't fetch registers from this type of core file\n");
      return;
    }

  FUNC3 (".reg", 0, "general-purpose", 1);
  FUNC3 (".reg2", 2, "floating-point", 0);
  FUNC3 (".reg-xfp", 3, "extended floating-point", 0);

  FUNC0 ();
}