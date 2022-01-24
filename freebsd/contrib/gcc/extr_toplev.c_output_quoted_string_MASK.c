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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

void
FUNC4 (FILE *asm_file, const char *string)
{
#ifdef OUTPUT_QUOTED_STRING
  OUTPUT_QUOTED_STRING (asm_file, string);
#else
  char c;

  FUNC3 ('\"', asm_file);
  while ((c = *string++) != 0)
    {
      if (FUNC0 (c))
	{
	  if (c == '\"' || c == '\\')
	    FUNC3 ('\\', asm_file);
	  FUNC3 (c, asm_file);
	}
      else
	FUNC2 (asm_file, "\\%03o", (unsigned char) c);
    }
  FUNC3 ('\"', asm_file);
#endif
}