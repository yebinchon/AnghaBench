#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state_t ;
typedef  TYPE_3__* arc_t ;
typedef  TYPE_4__* ainsn_t ;
struct TYPE_11__ {int insn_equiv_class_num; struct TYPE_11__* next_same_reservs_insn; TYPE_1__* insn_reserv_decl; int /*<<< orphan*/  first_insn_with_same_reservs; } ;
struct TYPE_10__ {TYPE_2__* to_state; TYPE_4__* insn; } ;
struct TYPE_9__ {int order_state_num; } ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 int MAX_LINE_LENGTH ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  output_description_file ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (state_t state)
{
  arc_t arc;
  ainsn_t ainsn;
  const char *insn_name;
  int curr_line_length;

  for (arc = FUNC0 (state); arc != NULL; arc = FUNC3 (arc))
    {
      ainsn = arc->insn;
      FUNC2 (ainsn->first_insn_with_same_reservs);
      FUNC1 (output_description_file, "    ");
      curr_line_length = 7;
      FUNC1 (output_description_file, "%2d: ", ainsn->insn_equiv_class_num);
      do
        {
          insn_name = ainsn->insn_reserv_decl->name;
          if (curr_line_length + FUNC4 (insn_name) > MAX_LINE_LENGTH)
            {
              if (ainsn != arc->insn)
                {
                  FUNC1 (output_description_file, ",\n      ");
                  curr_line_length = FUNC4 (insn_name) + 6;
                }
              else
                curr_line_length += FUNC4 (insn_name);
            }
          else
            {
              curr_line_length += FUNC4 (insn_name);
              if (ainsn != arc->insn)
                {
                  curr_line_length += 2;
                  FUNC1 (output_description_file, ", ");
                }
            }
          FUNC1 (output_description_file, "%s", insn_name);
          ainsn = ainsn->next_same_reservs_insn;
        }
      while (ainsn != NULL);
      FUNC1 (output_description_file, "    %d \n",
	       arc->to_state->order_state_num);
    }
  FUNC1 (output_description_file, "\n");
}