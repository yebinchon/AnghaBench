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
struct decision_head {struct decision* first; } ;
struct decision {scalar_t__ subroutine_number; char const* position; struct decision_head success; struct decision* next; TYPE_1__* afterward; int /*<<< orphan*/  number; scalar_t__ need_label; } ;
typedef  enum routine_type { ____Placeholder_routine_type } routine_type ;
struct TYPE_2__ {char const* position; int number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct decision_head*,int,int) ; 

__attribute__((used)) static void
FUNC7 (struct decision_head *head, const char *prevpos,
	    enum routine_type type, int initial)
{
  struct decision *p = head->first;

  FUNC4 ('\n');
  if (p->need_label)
    FUNC1 (" ", p->number);

  if (! initial && p->subroutine_number > 0)
    {
      static const char * const name_prefix[] = {
	  "recog", "split", "peephole2"
      };

      static const char * const call_suffix[] = {
	  ", pnum_clobbers", "", ", _pmatch_len"
      };

      /* This node has been broken out into a separate subroutine.
	 Call it, test the result, and branch accordingly.  */

      if (p->afterward)
	{
	  FUNC3 ("  tem = %s_%d (x0, insn%s);\n",
		  name_prefix[type], p->subroutine_number, call_suffix[type]);
	  if (FUNC0 (type))
	    FUNC3 ("  if (tem != 0)\n    return tem;\n");
	  else
	    FUNC3 ("  if (tem >= 0)\n    return tem;\n");

	  FUNC2 (p->position, p->afterward->position, "  ");
	  FUNC3 ("  goto L%d;\n", p->afterward->number);
	}
      else
	{
	  FUNC3 ("  return %s_%d (x0, insn%s);\n",
		  name_prefix[type], p->subroutine_number, call_suffix[type]);
	}
    }
  else
    {
      int depth = FUNC5 (p->position);

      FUNC2 (prevpos, p->position, "  ");
      FUNC6 (head, depth, type);

      for (p = head->first; p; p = p->next)
        if (p->success.first)
          FUNC7 (&p->success, p->position, type, 0);
    }
}