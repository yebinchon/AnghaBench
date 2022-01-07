
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union exp_element {int dummy; } exp_element ;
struct ui_file {int dummy; } ;
struct expression {int nelts; TYPE_2__* elts; TYPE_1__* language_defn; } ;
struct TYPE_4__ {int longconst; int opcode; } ;
struct TYPE_3__ {int la_name; } ;


 int fprintf_filtered (struct ui_file*,char*,...) ;
 int gdb_print_host_address (struct expression*,struct ui_file*) ;
 scalar_t__ isprint (char) ;
 char* op_name (struct expression*,int ) ;
 int print_longest (struct ui_file*,char,int ,int ) ;

void
dump_raw_expression (struct expression *exp, struct ui_file *stream,
       char *note)
{
  int elt;
  char *opcode_name;
  char *eltscan;
  int eltsize;

  fprintf_filtered (stream, "Dump of expression @ ");
  gdb_print_host_address (exp, stream);
  fprintf_filtered (stream, "'\n\tLanguage %s, %d elements, %ld bytes each.\n",
      exp->language_defn->la_name, exp->nelts,
      (long) sizeof (union exp_element));
  fprintf_filtered (stream, "\t%5s  %20s  %16s  %s\n", "Index", "Opcode",
      "Hex Value", "String Value");
  for (elt = 0; elt < exp->nelts; elt++)
    {
      fprintf_filtered (stream, "\t%5d  ", elt);
      opcode_name = op_name (exp, exp->elts[elt].opcode);

      fprintf_filtered (stream, "%20s  ", opcode_name);
      print_longest (stream, 'd', 0, exp->elts[elt].longconst);
      fprintf_filtered (stream, "  ");

      for (eltscan = (char *) &exp->elts[elt],
    eltsize = sizeof (union exp_element);
    eltsize-- > 0;
    eltscan++)
 {
   fprintf_filtered (stream, "%c",
       isprint (*eltscan) ? (*eltscan & 0xFF) : '.');
 }
      fprintf_filtered (stream, "\n");
    }
}
