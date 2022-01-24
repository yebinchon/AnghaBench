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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  arm_arch6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (FILE * stream, unsigned int base, int reg, int count)
{
  int i;

  /* Workaround ARM10 VFPr1 bug.  */
  if (count == 2 && !arm_arch6)
    {
      if (reg == 15)
	reg--;
      count++;
    }

  FUNC1 ('\t', stream);
  FUNC0 (stream, "fldmfdx\t%r!, {", base);

  for (i = reg; i < reg + count; i++)
    {
      if (i > reg)
	FUNC2 (", ", stream);
      FUNC0 (stream, "d%d", i);
    }
  FUNC2 ("}\n", stream);

}