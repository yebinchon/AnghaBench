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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_dump_unnumbered ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * outfile ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_rtx_head ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ sawclose ; 

int
FUNC5 (FILE *outf, rtx x)
{
  outfile = outf;
  sawclose = 0;
  if (! flag_dump_unnumbered
      || !FUNC1 (x) || FUNC0 (x) < 0)
    {
      FUNC2 (print_rtx_head, outfile);
      FUNC3 (x);
      FUNC4 ('\n', outf);
      return 1;
    }
  return 0;
}