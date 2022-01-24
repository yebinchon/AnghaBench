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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_ARRAY ; 
 int TYPE_CODE_FUNC ; 
 int TYPE_CODE_MEMBER ; 
 int TYPE_CODE_METHOD ; 
 int TYPE_CODE_PTR ; 
 int TYPE_CODE_REF ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ui_file*) ; 
 int FUNC6 (char*) ; 

void
FUNC7 (struct type *type, char *varstring, struct ui_file *stream,
	      int show, int level)
{
  enum type_code code;
  int demangled_args;

  FUNC2 (type, stream, show, level);
  code = FUNC0 (type);
  if ((varstring != NULL && *varstring != '\0')
      ||
  /* Need a space if going to print stars or brackets;
     but not if we will print just a type name.  */
      ((show > 0 || FUNC1 (type) == 0)
       &&
       (code == TYPE_CODE_PTR || code == TYPE_CODE_FUNC
	|| code == TYPE_CODE_METHOD
	|| code == TYPE_CODE_ARRAY
	|| code == TYPE_CODE_MEMBER
	|| code == TYPE_CODE_REF)))
    FUNC5 (" ", stream);
  FUNC3 (type, stream, show, 0);

  FUNC5 (varstring, stream);

  /* For demangled function names, we have the arglist as part of the name,
     so don't print an additional pair of ()'s */

  demangled_args = varstring[FUNC6 (varstring) - 1] == ')';
  FUNC4 (type, stream, show, 0, demangled_args);
}