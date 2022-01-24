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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (char const*) ; 

void
FUNC6 (FILE *asm_file, const char *input_name)
{
  int len;
  const char *na;

  if (input_name == NULL)
    input_name = "<stdin>";

  len = FUNC5 (input_name);
  na = input_name + len;

  /* NA gets INPUT_NAME sans directory names.  */
  while (na > input_name)
    {
      if (FUNC1 (na[-1]))
	break;
      na--;
    }

#ifdef ASM_OUTPUT_SOURCE_FILENAME
  ASM_OUTPUT_SOURCE_FILENAME (asm_file, na);
#else
  FUNC2 (asm_file, "\t.file\t");
  FUNC4 (asm_file, na);
  FUNC3 ('\n', asm_file);
#endif
}