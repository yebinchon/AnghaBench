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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BARRIER 133 
#define  CALL_INSN 132 
#define  CODE_LABEL 131 
 int FUNC0 (scalar_t__) ; 
#define  INSN 130 
#define  JUMP_INSN 129 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  NOTE 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  flag_dump_unnumbered ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * outfile ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 char* print_rtx_head ; 
 scalar_t__ sawclose ; 

void
FUNC7 (FILE *outf, rtx rtx_first)
{
  rtx tmp_rtx;

  outfile = outf;
  sawclose = 0;

  if (rtx_first == 0)
    {
      FUNC5 (print_rtx_head, outf);
      FUNC5 ("(nil)\n", outf);
    }
  else
    switch (FUNC0 (rtx_first))
      {
      case INSN:
      case JUMP_INSN:
      case CALL_INSN:
      case NOTE:
      case CODE_LABEL:
      case BARRIER:
	for (tmp_rtx = rtx_first; tmp_rtx != 0; tmp_rtx = FUNC1 (tmp_rtx))
	  if (! flag_dump_unnumbered
	      || !FUNC3 (tmp_rtx) || FUNC2 (tmp_rtx) < 0)
	    {
	      FUNC5 (print_rtx_head, outfile);
	      FUNC6 (tmp_rtx);
	      FUNC4 (outfile, "\n");
	    }
	break;

      default:
	FUNC5 (print_rtx_head, outfile);
	FUNC6 (rtx_first);
      }
}