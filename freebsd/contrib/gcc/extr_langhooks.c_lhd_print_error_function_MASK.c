#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* printer; } ;
typedef  TYPE_1__ diagnostic_context ;
struct TYPE_11__ {int /*<<< orphan*/  (* decl_printable_name ) (int /*<<< orphan*/ *,int) ;} ;
struct TYPE_10__ {char* prefix; } ;

/* Variables and functions */
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * current_function_decl ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_6__ lang_hooks ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

void
FUNC12 (diagnostic_context *context, const char *file)
{
  if (FUNC3 (context))
    {
      const char *old_prefix = context->printer->prefix;
      char *new_prefix = file ? FUNC5 (file) : NULL;

      FUNC9 (context->printer, new_prefix);

      if (current_function_decl == NULL)
	FUNC8 (context->printer, FUNC2("At top level:"));
      else
	{
	  if (FUNC0 (FUNC1 (current_function_decl)) == METHOD_TYPE)
	    FUNC8
	      (context->printer, FUNC2("In member function %qs:"),
	       lang_hooks.decl_printable_name (current_function_decl, 2));
	  else
	    FUNC8
	      (context->printer, FUNC2("In function %qs:"),
	       lang_hooks.decl_printable_name (current_function_decl, 2));
	}

      FUNC4 (context);
      FUNC7 (context->printer);
      context->printer->prefix = old_prefix;
      FUNC6 ((char*) new_prefix);
    }
}