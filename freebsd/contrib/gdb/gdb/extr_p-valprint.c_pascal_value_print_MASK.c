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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 int /*<<< orphan*/ * FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct value*) ; 
 int FUNC4 (struct value*,struct ui_file*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,char*,struct ui_file*,int) ; 

int
FUNC8 (struct value *val, struct ui_file *stream, int format,
		    enum val_prettyprint pretty)
{
  struct type *type = FUNC3 (val);

  /* If it is a pointer, indicate what it points to.

     Print type also if it is a reference.

     Object pascal: if it is a member pointer, we will take care
     of that when we print it.  */
  if (FUNC0 (type) == TYPE_CODE_PTR ||
      FUNC0 (type) == TYPE_CODE_REF)
    {
      /* Hack:  remove (char *) for char strings.  Their
         type is indicated by the quoted string anyway. */
      if (FUNC0 (type) == TYPE_CODE_PTR &&
	  FUNC1 (type) == NULL &&
	  FUNC1 (FUNC2 (type)) != NULL
	  && FUNC6 (FUNC1 (FUNC2 (type)), "char") == 0)
	{
	  /* Print nothing */
	}
      else
	{
	  FUNC5 (stream, "(");
	  FUNC7 (type, "", stream, -1);
	  FUNC5 (stream, ") ");
	}
    }
  return FUNC4 (val, stream, format, 1, 0, pretty);
}