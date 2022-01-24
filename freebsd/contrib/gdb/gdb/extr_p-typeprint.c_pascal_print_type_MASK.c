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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
 int TYPE_CODE_FUNC ; 
 int TYPE_CODE_METHOD ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 

void
FUNC7 (struct type *type, char *varstring, struct ui_file *stream,
		   int show, int level)
{
  enum type_code code;
  int demangled_args;

  code = FUNC1 (type);

  if (show > 0)
    FUNC0 (type);

  if ((code == TYPE_CODE_FUNC ||
       code == TYPE_CODE_METHOD))
    {
      FUNC4 (type, stream, show, 0);
    }
  /* first the name */
  FUNC2 (varstring, stream);

  if ((varstring != NULL && *varstring != '\0') &&
      !(code == TYPE_CODE_FUNC ||
	code == TYPE_CODE_METHOD))
    {
      FUNC2 (" : ", stream);
    }

  if (!(code == TYPE_CODE_FUNC ||
	code == TYPE_CODE_METHOD))
    {
      FUNC4 (type, stream, show, 0);
    }

  FUNC3 (type, stream, show, level);
  /* For demangled function names, we have the arglist as part of the name,
     so don't print an additional pair of ()'s */

  demangled_args = varstring ? FUNC6 (varstring, '(') != NULL : 0;
  FUNC5 (type, stream, show, 0, demangled_args);

}