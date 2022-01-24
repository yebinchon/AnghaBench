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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct field {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ la_language; } ;

/* Variables and functions */
 struct field* FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*) ; 
 scalar_t__ language_cplus ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (struct type *type, struct ui_file *stream)
{
  int i;
  struct field *args;

  FUNC4 (stream, "(");
  args = FUNC0 (type);
  if (args != NULL)
    {
      int i;

      /* FIXME drow/2002-05-31: Always skips the first argument,
	 should we be checking for static members?  */

      for (i = 1; i < FUNC1 (type); i++)
	{
	  FUNC3 (args[i].type, "", stream, -1, 0);
	  if (i != FUNC1 (type))
	    {
	      FUNC4 (stream, ",");
	      FUNC5 ("    ");
	    }
	}
      if (FUNC2 (type))
	FUNC4 (stream, "...");
      else if (i == 1
	       && (current_language->la_language == language_cplus))
	FUNC4 (stream, "void");
    }
  else if (current_language->la_language == language_cplus)
    {
      FUNC4 (stream, "void");
    }

  FUNC4 (stream, ")");
}