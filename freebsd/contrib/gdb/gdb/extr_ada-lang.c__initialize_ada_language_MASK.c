#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct objfile {int dummy; } ;
typedef  char* TYPE_NAME ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 int TARGET_DOUBLE_BIT ; 
 int TARGET_FLOAT_BIT ; 
 int TARGET_INT_BIT ; 
 int TARGET_LONG_BIT ; 
 int TARGET_LONG_DOUBLE_BIT ; 
 int TARGET_LONG_LONG_BIT ; 
 int TARGET_SHORT_BIT ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 int /*<<< orphan*/  TYPE_CODE_INT ; 
 int /*<<< orphan*/  TYPE_CODE_VOID ; 
 int /*<<< orphan*/  ada_language_defn ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  begin_command ; 
 void* builtin_type_ada_char ; 
 void* builtin_type_ada_double ; 
 void* builtin_type_ada_float ; 
 void* builtin_type_ada_int ; 
 void* builtin_type_ada_long ; 
 void* builtin_type_ada_long_double ; 
 void* builtin_type_ada_long_long ; 
 void* builtin_type_ada_natural ; 
 void* builtin_type_ada_positive ; 
 void* builtin_type_ada_short ; 
 char* builtin_type_ada_system_address ; 
 int /*<<< orphan*/  class_breakpoint ; 
 int /*<<< orphan*/  class_support ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_uinteger ; 
 int varsize_limit ; 

void
FUNC6 (void)
{
  builtin_type_ada_int =
    FUNC4 (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       0, "integer", (struct objfile *) NULL);
  builtin_type_ada_long =
    FUNC4 (TYPE_CODE_INT, TARGET_LONG_BIT / TARGET_CHAR_BIT,
	       0, "long_integer", (struct objfile *) NULL);
  builtin_type_ada_short =
    FUNC4 (TYPE_CODE_INT, TARGET_SHORT_BIT / TARGET_CHAR_BIT,
	       0, "short_integer", (struct objfile *) NULL);
  builtin_type_ada_char =
    FUNC4 (TYPE_CODE_INT, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
	       0, "character", (struct objfile *) NULL);
  builtin_type_ada_float =
    FUNC4 (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
	       0, "float", (struct objfile *) NULL);
  builtin_type_ada_double =
    FUNC4 (TYPE_CODE_FLT, TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
	       0, "long_float", (struct objfile *) NULL);
  builtin_type_ada_long_long =
    FUNC4 (TYPE_CODE_INT, TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
	       0, "long_long_integer", (struct objfile *) NULL);
  builtin_type_ada_long_double =
    FUNC4 (TYPE_CODE_FLT, TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
	       0, "long_long_float", (struct objfile *) NULL);
  builtin_type_ada_natural =
    FUNC4 (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       0, "natural", (struct objfile *) NULL);
  builtin_type_ada_positive =
    FUNC4 (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       0, "positive", (struct objfile *) NULL);


  builtin_type_ada_system_address =
    FUNC5 (FUNC4 (TYPE_CODE_VOID, 1, 0, "void",
				    (struct objfile *) NULL));
  TYPE_NAME (builtin_type_ada_system_address) = "system__address";

  FUNC1 (&ada_language_defn);

  FUNC3
    (FUNC2 ("varsize-limit", class_support, var_uinteger,
		  (char *) &varsize_limit,
		  "Set maximum bytes in dynamic-sized object.",
		  &setlist), &showlist);
  varsize_limit = 65536;

  FUNC0 ("begin", class_breakpoint, begin_command,
	   "Start the debugged program, stopping at the beginning of the\n\
main program.  You may specify command-line arguments to give it, as for\n\
the \"run\" command (q.v.).");
}