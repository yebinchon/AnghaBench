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
 int FALSE ; 
 unsigned int LAST_ARM_REGNUM ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (FILE *stream, const char *instr, unsigned reg,
		 unsigned long mask)
{
  unsigned i;
  bool not_first = FALSE;

  FUNC2 ('\t', stream);
  FUNC0 (stream, instr, reg);
  FUNC3 (", {", stream);

  for (i = 0; i <= LAST_ARM_REGNUM; i++)
    if (mask & (1 << i))
      {
	if (not_first)
	  FUNC1 (stream, ", ");

	FUNC0 (stream, "%r", i);
	not_first = TRUE;
      }

  FUNC1 (stream, "}\n");
}