
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_6__ {int query_units_num; TYPE_1__* first_automaton; } ;
struct TYPE_5__ {struct TYPE_5__* next_automaton; } ;


 char* CHIP_NAME ;
 char* CPU_CODE_PARAMETER_NAME ;
 char* CPU_UNIT_RESERVATION_P_FUNC_NAME ;
 char* STATE_NAME ;
 char* STATE_TYPE_NAME ;
 TYPE_4__* description ;
 int fprintf (int ,char*,...) ;
 int output_chip_member_name (int ,TYPE_1__*) ;
 int output_file ;
 int output_reserved_units_table_name (int ,TYPE_1__*) ;

__attribute__((used)) static void
output_cpu_unit_reservation_p (void)
{
  automaton_t automaton;

  fprintf (output_file, "int\n%s (%s %s, int %s)\n",
    CPU_UNIT_RESERVATION_P_FUNC_NAME,
    STATE_TYPE_NAME, STATE_NAME,
    CPU_CODE_PARAMETER_NAME);
  fprintf (output_file, "{\n  gcc_assert (%s >= 0 && %s < %d);\n",
    CPU_CODE_PARAMETER_NAME, CPU_CODE_PARAMETER_NAME,
    description->query_units_num);
  if (description->query_units_num > 0)
    for (automaton = description->first_automaton;
  automaton != ((void*)0);
  automaton = automaton->next_automaton)
      {
 fprintf (output_file, "  if ((");
 output_reserved_units_table_name (output_file, automaton);
 fprintf (output_file, " [((struct %s *) %s)->", CHIP_NAME, STATE_NAME);
 output_chip_member_name (output_file, automaton);
 fprintf (output_file, " * %d + %s / 8] >> (%s %% 8)) & 1)\n",
   (description->query_units_num + 7) / 8,
   CPU_CODE_PARAMETER_NAME, CPU_CODE_PARAMETER_NAME);
 fprintf (output_file, "    return 1;\n");
      }
  fprintf (output_file, "  return 0;\n}\n\n");
}
