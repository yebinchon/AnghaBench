
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
typedef TYPE_2__* automaton_t ;
struct TYPE_10__ {scalar_t__ corresponding_automaton_num; char* name; } ;
struct TYPE_9__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_8__ {scalar_t__ automaton_order_num; } ;
struct TYPE_7__ {scalar_t__ mode; } ;


 TYPE_5__* DECL_UNIT (TYPE_1__*) ;
 int MAX_LINE_LENGTH ;
 TYPE_4__* description ;
 scalar_t__ dm_unit ;
 int fprintf (int ,char*,...) ;
 int output_description_file ;
 int strlen (char const*) ;

__attribute__((used)) static void
output_automaton_units (automaton_t automaton)
{
  decl_t decl;
  const char *name;
  int curr_line_length;
  int there_is_an_automaton_unit;
  int i;

  fprintf (output_description_file, "\n  Corresponding units:\n");
  fprintf (output_description_file, "    ");
  curr_line_length = 4;
  there_is_an_automaton_unit = 0;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit
          && (DECL_UNIT (decl)->corresponding_automaton_num
       == automaton->automaton_order_num))
 {
   there_is_an_automaton_unit = 1;
   name = DECL_UNIT (decl)->name;
   if (curr_line_length + strlen (name) + 1 > MAX_LINE_LENGTH )
     {
       curr_line_length = strlen (name) + 4;
       fprintf (output_description_file, "\n    ");
     }
   else
     {
       curr_line_length += strlen (name) + 1;
       fprintf (output_description_file, " ");
     }
   fprintf (output_description_file, "%s", name);
 }
    }
  if (!there_is_an_automaton_unit)
    fprintf (output_description_file, "<None>");
  fprintf (output_description_file, "\n\n");
}
