#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct expression {TYPE_2__* language_defn; } ;
struct cleanup {int dummy; } ;
struct TYPE_4__ {TYPE_1__* la_exp_desc; } ;
struct TYPE_3__ {struct value* (* evaluate_exp ) (int /*<<< orphan*/ ,struct expression*,int*,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EVAL_NORMAL ; 
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 struct value* FUNC0 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct value* FUNC3 (char*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,struct expression*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct value*) ; 

__attribute__((used)) static void 
FUNC10 (char *args, int from_tty)
{
  struct value *object, *function, *description;
  CORE_ADDR string_addr, object_addr;
  int i = 0;
  char c = -1;

  if (!args || !*args)
    FUNC2 (
"The 'print-object' command requires an argument (an Objective-C object)");

  {
    struct expression *expr = FUNC5 (args);
    struct cleanup *old_chain = 
      FUNC4 (free_current_contents, &expr);
    int pc = 0;

    object = expr->language_defn->la_exp_desc->evaluate_exp 
      (builtin_type_void_data_ptr, expr, &pc, EVAL_NORMAL);
    FUNC1 (old_chain);
  }

  /* Validate the address for sanity.  */
  object_addr = FUNC9 (object);
  FUNC7 (object_addr, &c, 1);

  function = FUNC3 ("_NSPrintForDebugger");
  if (function == NULL)
    FUNC2 ("Unable to locate _NSPrintForDebugger in child process");

  description = FUNC0 (function, 1, &object);

  string_addr = FUNC9 (description);
  if (string_addr == 0)
    FUNC2 ("object returns null description");

  FUNC7 (string_addr + i++, &c, 1);
  if (c != '\0')
    do
      { /* Read and print characters up to EOS.  */
	QUIT;
	FUNC6 ("%c", c);
	FUNC7 (string_addr + i++, &c, 1);
      } while (c != 0);
  else
    FUNC6("<object returns empty description>");
  FUNC6 ("\n");
}