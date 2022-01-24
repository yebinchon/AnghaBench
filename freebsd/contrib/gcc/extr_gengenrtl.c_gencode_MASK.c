#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char** formats ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  const char **fmt;

  FUNC1 ("#include \"config.h\"");
  FUNC1 ("#include \"system.h\"");
  FUNC1 ("#include \"coretypes.h\"");
  FUNC1 ("#include \"tm.h\"");
  FUNC1 ("#include \"obstack.h\"");
  FUNC1 ("#include \"rtl.h\"");
  FUNC1 ("#include \"ggc.h\"\n");

  for (fmt = formats; *fmt != 0; fmt++)
    FUNC0 (*fmt);
}