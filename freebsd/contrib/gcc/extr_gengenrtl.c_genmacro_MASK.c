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
struct TYPE_2__ {char* enumname; char* format; } ;

/* Variables and functions */
 TYPE_1__* defs ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (int idx)
{
  const char *p;
  int i;

  /* We write a macro that defines gen_rtx_RTLCODE to be an equivalent to
     gen_rtx_fmt_FORMAT where FORMAT is the RTX_FORMAT of RTLCODE.  */

  if (FUNC0 (idx))
    /* Don't define a macro for this code.  */
    return;

  FUNC1 ("#define gen_rtx_%s%s(MODE",
	   FUNC3 (idx) ? "raw_" : "", defs[idx].enumname);

  for (p = defs[idx].format, i = 0; *p != 0; p++)
    if (*p != '0')
      FUNC1 (", ARG%d", i++);

  FUNC1 (") \\\n  gen_rtx_fmt_%s (%s, (MODE)",
	  defs[idx].format, defs[idx].enumname);

  for (p = defs[idx].format, i = 0; *p != 0; p++)
    if (*p != '0')
      FUNC1 (", (ARG%d)", i++);

  FUNC2 (")");
}