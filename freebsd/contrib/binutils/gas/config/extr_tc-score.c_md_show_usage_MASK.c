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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2 (FILE * fp)
{
  FUNC1 (fp, FUNC0(" Score-specific assembler options:\n"));
#ifdef OPTION_EB
  fprintf (fp, _("\
        -EB\t\tassemble code for a big-endian cpu\n"));
#endif

#ifdef OPTION_EL
  fprintf (fp, _("\
        -EL\t\tassemble code for a little-endian cpu\n"));
#endif

  FUNC1 (fp, FUNC0("\
        -FIXDD\t\tassemble code for fix data dependency\n"));
  FUNC1 (fp, FUNC0("\
        -NWARN\t\tassemble code for no warning message for fix data dependency\n"));
  FUNC1 (fp, FUNC0("\
        -SCORE5\t\tassemble code for target is SCORE5\n"));
  FUNC1 (fp, FUNC0("\
        -SCORE5U\tassemble code for target is SCORE5U\n"));
  FUNC1 (fp, FUNC0("\
        -SCORE7\t\tassemble code for target is SCORE7, this is default setting\n"));
  FUNC1 (fp, FUNC0("\
        -USE_R1\t\tassemble code for no warning message when using temp register r1\n"));
  FUNC1 (fp, FUNC0("\
        -KPIC\t\tassemble code for PIC\n"));
  FUNC1 (fp, FUNC0("\
        -O0\t\tassembler will not perform any optimizations\n"));
  FUNC1 (fp, FUNC0("\
        -G gpnum\tassemble code for setting gpsize and default is 8 byte\n"));
  FUNC1 (fp, FUNC0("\
        -V \t\tSunplus release version \n"));
}