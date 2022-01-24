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
struct value {int dummy; } ;
struct inf {TYPE_1__* task; } ;
typedef  int /*<<< orphan*/  mach_port_type_t ;
typedef  scalar_t__ error_t ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORTINFO_DETAILS ; 
 struct inf* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct value* FUNC2 (char**) ; 
 scalar_t__ FUNC3 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 
 long FUNC6 (struct value*) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 struct value* FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (char *args, mach_port_type_t only)
{
  struct inf *inf = FUNC0 ();
  struct value *vmark = FUNC8 ();

  if (args)
    /* Explicit list of port rights.  */
    {
      while (*args)
	{
	  struct value *val = FUNC2 (&args);
	  long right = FUNC6 (val);
	  error_t err =
	  FUNC3 (right, 0, inf->task->port, PORTINFO_DETAILS,
			   stdout);
	  if (err)
	    FUNC1 ("%ld: %s.", right, FUNC5 (err));
	}
    }
  else
    /* Print all of them.  */
    {
      error_t err =
      FUNC4 (inf->task->port, only, PORTINFO_DETAILS,
			     stdout);
      if (err)
	FUNC1 ("%s.", FUNC5 (err));
    }

  FUNC7 (vmark);
}