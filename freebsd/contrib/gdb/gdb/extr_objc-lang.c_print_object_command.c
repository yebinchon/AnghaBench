
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct value {int dummy; } ;
struct expression {TYPE_2__* language_defn; } ;
struct cleanup {int dummy; } ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {struct value* (* evaluate_exp ) (int ,struct expression*,int*,int ) ;} ;
typedef scalar_t__ CORE_ADDR ;


 int EVAL_NORMAL ;
 int QUIT ;
 int builtin_type_void_data_ptr ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct value* find_function_in_inferior (char*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int printf_filtered (char*,...) ;
 int read_memory (scalar_t__,char*,int) ;
 struct value* stub1 (int ,struct expression*,int*,int ) ;
 scalar_t__ value_as_long (struct value*) ;

__attribute__((used)) static void
print_object_command (char *args, int from_tty)
{
  struct value *object, *function, *description;
  CORE_ADDR string_addr, object_addr;
  int i = 0;
  char c = -1;

  if (!args || !*args)
    error (
"The 'print-object' command requires an argument (an Objective-C object)");

  {
    struct expression *expr = parse_expression (args);
    struct cleanup *old_chain =
      make_cleanup (free_current_contents, &expr);
    int pc = 0;

    object = expr->language_defn->la_exp_desc->evaluate_exp
      (builtin_type_void_data_ptr, expr, &pc, EVAL_NORMAL);
    do_cleanups (old_chain);
  }


  object_addr = value_as_long (object);
  read_memory (object_addr, &c, 1);

  function = find_function_in_inferior ("_NSPrintForDebugger");
  if (function == ((void*)0))
    error ("Unable to locate _NSPrintForDebugger in child process");

  description = call_function_by_hand (function, 1, &object);

  string_addr = value_as_long (description);
  if (string_addr == 0)
    error ("object returns null description");

  read_memory (string_addr + i++, &c, 1);
  if (c != '\0')
    do
      {
 QUIT;
 printf_filtered ("%c", c);
 read_memory (string_addr + i++, &c, 1);
      } while (c != 0);
  else
    printf_filtered("<object returns empty description>");
  printf_filtered ("\n");
}
