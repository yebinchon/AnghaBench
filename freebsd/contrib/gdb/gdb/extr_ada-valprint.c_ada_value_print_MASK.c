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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 int FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct value*) ; 
 char* FUNC5 (struct value*) ; 
 scalar_t__ FUNC6 (struct value*) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 scalar_t__ FUNC8 (struct type*) ; 
 scalar_t__ FUNC9 (struct type*) ; 
 struct type* FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct type*,char*,struct ui_file*,int) ; 
 int FUNC13 (struct type*,char*,int /*<<< orphan*/ ,scalar_t__,struct ui_file*,int,int,int /*<<< orphan*/ ,int) ; 
 struct value* FUNC14 (struct type*,char*,scalar_t__) ; 

int
FUNC15 (struct value *val0, struct ui_file *stream, int format,
		 enum val_prettyprint pretty)
{
  char *valaddr = FUNC5 (val0);
  CORE_ADDR address = FUNC4 (val0) + FUNC6 (val0);
  struct type *type =
    FUNC10 (FUNC7 (val0), valaddr, address, NULL);
  struct value *val =
    FUNC14 (type, valaddr, address);

  /* If it is a pointer, indicate what it points to. */
  if (FUNC0 (type) == TYPE_CODE_PTR || FUNC0 (type) == TYPE_CODE_REF)
    {
      /* Hack:  remove (char *) for char strings.  Their
         type is indicated by the quoted string anyway. */
      if (FUNC0 (type) == TYPE_CODE_PTR &&
	  FUNC1 (FUNC2 (type)) == sizeof (char) &&
	  FUNC0 (FUNC2 (type)) == TYPE_CODE_INT &&
	  !FUNC3 (FUNC2 (type)))
	{
	  /* Print nothing */
	}
      else
	{
	  FUNC11 (stream, "(");
	  FUNC12 (type, "", stream, -1);
	  FUNC11 (stream, ") ");
	}
    }
  else if (FUNC8 (type))
    {
      FUNC11 (stream, "(");
      FUNC12 (type, "", stream, -1);
      FUNC11 (stream, ") ");
    }
  else if (FUNC9 (type))
    {
      FUNC11 (stream, "(");
      FUNC12 (type, "", stream, -1);
      FUNC11 (stream, ") (...?)");
      return 0;
    }
  return (FUNC13 (type, FUNC5 (val), 0, address,
		     stream, format, 1, 0, pretty));
}