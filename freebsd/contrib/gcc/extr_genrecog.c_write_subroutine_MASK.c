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
struct decision_head {TYPE_1__* first; } ;
typedef  enum routine_type { ____Placeholder_routine_type } routine_type ;
struct TYPE_2__ {int subroutine_number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
#define  PEEPHOLE2 130 
#define  RECOG 129 
#define  SPLIT 128 
 int max_depth ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct decision_head*,char*,int,int) ; 

__attribute__((used)) static void
FUNC5 (struct decision_head *head, enum routine_type type)
{
  int subfunction = head->first ? head->first->subroutine_number : 0;
  const char *s_or_e;
  char extension[32];
  int i;

  s_or_e = subfunction ? "static " : "";

  if (subfunction)
    FUNC2 (extension, "_%d", subfunction);
  else if (type == RECOG)
    extension[0] = '\0';
  else
    FUNC3 (extension, "_insns");

  switch (type)
    {
    case RECOG:
      FUNC1 ("%sint\n\
recog%s (rtx x0 ATTRIBUTE_UNUSED,\n\trtx insn ATTRIBUTE_UNUSED,\n\tint *pnum_clobbers ATTRIBUTE_UNUSED)\n", s_or_e, extension);
      break;
    case SPLIT:
      FUNC1 ("%srtx\n\
split%s (rtx x0 ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)\n",
	      s_or_e, extension);
      break;
    case PEEPHOLE2:
      FUNC1 ("%srtx\n\
peephole2%s (rtx x0 ATTRIBUTE_UNUSED,\n\trtx insn ATTRIBUTE_UNUSED,\n\tint *_pmatch_len ATTRIBUTE_UNUSED)\n",
	      s_or_e, extension);
      break;
    }

  FUNC1 ("{\n  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];\n");
  for (i = 1; i <= max_depth; i++)
    FUNC1 ("  rtx x%d ATTRIBUTE_UNUSED;\n", i);

  FUNC1 ("  %s tem ATTRIBUTE_UNUSED;\n", FUNC0 (type) ? "rtx" : "int");

  if (!subfunction)
    FUNC1 ("  recog_data.insn = NULL_RTX;\n");

  if (head->first)
    FUNC4 (head, "", type, 1);
  else
    FUNC1 ("  goto ret0;\n");

  FUNC1 (" ret0:\n  return %d;\n}\n\n", FUNC0 (type) ? 0 : -1);
}