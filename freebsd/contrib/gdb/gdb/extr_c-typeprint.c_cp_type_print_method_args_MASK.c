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
 int /*<<< orphan*/  DMGL_ANSI ; 
 struct field* FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ui_file*) ; 
 scalar_t__ language_cplus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct ui_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct type *mtype, char *prefix, char *varstring,
			   int staticp, struct ui_file *stream)
{
  struct field *args = FUNC0 (mtype);
  int nargs = FUNC1 (mtype);
  int varargs = FUNC2 (mtype);
  int i;

  FUNC4 (stream, prefix, language_cplus, DMGL_ANSI);
  FUNC4 (stream, varstring, language_cplus, DMGL_ANSI);
  FUNC5 ("(", stream);

  /* Skip the class variable.  */
  i = staticp ? 0 : 1;
  if (nargs > i)
    {
      while (i < nargs)
	{
	  FUNC6 (args[i++].type, "", stream, 0);

	  if (i == nargs && varargs)
	    FUNC3 (stream, ", ...");
	  else if (i < nargs)
	    FUNC3 (stream, ", ");
	}
    }
  else if (varargs)
    FUNC3 (stream, "...");
  else if (current_language->la_language == language_cplus)
    FUNC3 (stream, "void");

  FUNC3 (stream, ")");
}