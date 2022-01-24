#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ diagnostic_info ;
struct TYPE_13__ {TYPE_3__* printer; } ;
typedef  TYPE_2__ diagnostic_context ;
struct TYPE_14__ {char* prefix; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * current_function_decl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (diagnostic_context *context,
			 diagnostic_info *diagnostic)
{
  if (FUNC2 (context))
    {
      const char *old_prefix = context->printer->prefix;
      const char *file = FUNC0 (diagnostic->location);
      char *new_prefix = file ? FUNC4 (file) : NULL;

      FUNC8 (context->printer, new_prefix);

      if (current_function_decl == NULL)
	FUNC9 (context->printer, "At global scope:");
      else
	FUNC10 (context->printer, "In %s %qs:",
		   FUNC5 (current_function_decl),
		   FUNC1 (current_function_decl, 2));
      FUNC7 (context->printer);

      FUNC3 (context);
      FUNC6 (context->printer);
      context->printer->prefix = old_prefix;
    }
}