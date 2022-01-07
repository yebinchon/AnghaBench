
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_3__* arc_t ;
typedef TYPE_4__* ainsn_t ;
struct TYPE_11__ {int insn_equiv_class_num; struct TYPE_11__* next_same_reservs_insn; TYPE_1__* insn_reserv_decl; int first_insn_with_same_reservs; } ;
struct TYPE_10__ {TYPE_2__* to_state; TYPE_4__* insn; } ;
struct TYPE_9__ {int order_state_num; } ;
struct TYPE_8__ {char* name; } ;


 int MAX_LINE_LENGTH ;
 TYPE_3__* first_out_arc (int ) ;
 int fprintf (int ,char*,...) ;
 int gcc_assert (int ) ;
 TYPE_3__* next_out_arc (TYPE_3__*) ;
 int output_description_file ;
 int strlen (char const*) ;

__attribute__((used)) static void
output_state_arcs (state_t state)
{
  arc_t arc;
  ainsn_t ainsn;
  const char *insn_name;
  int curr_line_length;

  for (arc = first_out_arc (state); arc != ((void*)0); arc = next_out_arc (arc))
    {
      ainsn = arc->insn;
      gcc_assert (ainsn->first_insn_with_same_reservs);
      fprintf (output_description_file, "    ");
      curr_line_length = 7;
      fprintf (output_description_file, "%2d: ", ainsn->insn_equiv_class_num);
      do
        {
          insn_name = ainsn->insn_reserv_decl->name;
          if (curr_line_length + strlen (insn_name) > MAX_LINE_LENGTH)
            {
              if (ainsn != arc->insn)
                {
                  fprintf (output_description_file, ",\n      ");
                  curr_line_length = strlen (insn_name) + 6;
                }
              else
                curr_line_length += strlen (insn_name);
            }
          else
            {
              curr_line_length += strlen (insn_name);
              if (ainsn != arc->insn)
                {
                  curr_line_length += 2;
                  fprintf (output_description_file, ", ");
                }
            }
          fprintf (output_description_file, "%s", insn_name);
          ainsn = ainsn->next_same_reservs_insn;
        }
      while (ainsn != ((void*)0));
      fprintf (output_description_file, "    %d \n",
        arc->to_state->order_state_num);
    }
  fprintf (output_description_file, "\n");
}
