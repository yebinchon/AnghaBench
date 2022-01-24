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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_one_condition ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ("\
/* Structure definition duplicated from gensupport.h rather than\n\
   drag in that file and its dependencies.  */\n\
struct c_test\n\
{\n\
  const char *expr;\n\
  int value;\n\
};\n\
\n\
/* This table lists each condition found in the machine description.\n\
   Each condition is mapped to its truth value (0 or 1), or -1 if that\n\
   cannot be calculated at compile time.\n\
   If we don't have __builtin_constant_p, or it's not acceptable in array\n\
   initializers, fall back to assuming that all conditions potentially\n\
   vary at run time.  It works in 3.0.1 and later; 3.0 only when not\n\
   optimizing.  */\n\
\n\
#if GCC_VERSION >= 3001\n\
static const struct c_test insn_conditions[] = {\n");

  FUNC1 (write_one_condition, 0);

  FUNC0 ("\n};\n#endif /* gcc >= 3.0.1 */\n");
}