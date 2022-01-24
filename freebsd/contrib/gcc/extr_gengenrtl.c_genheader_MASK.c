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
struct TYPE_2__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 unsigned int NUM_RTX_CODE ; 
 TYPE_1__* defs ; 
 char** formats ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  unsigned int i;
  const char **fmt;

  FUNC3 ("#ifndef GCC_GENRTL_H");
  FUNC3 ("#define GCC_GENRTL_H\n");

  for (fmt = formats; *fmt; ++fmt)
    FUNC0 (*fmt);

  FUNC2 ('\n');

  for (i = 0; i < NUM_RTX_CODE; i++)
    if (! FUNC4 (defs[i].format))
      FUNC1 (i);

  FUNC3 ("\n#endif /* GCC_GENRTL_H */");
}