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
struct type {int dummy; } ;
struct format_data {int count; int /*<<< orphan*/  format; int /*<<< orphan*/  size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 scalar_t__ TYPE_CODE_REF ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 scalar_t__ FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct value* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void ; 
 struct format_data FUNC7 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC9 (struct format_data,int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC10 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  last_examine_address ; 
 struct value* last_examine_value ; 
 int /*<<< orphan*/  last_format ; 
 int /*<<< orphan*/  last_size ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct type* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ lval_memory ; 
 struct cleanup* FUNC13 (int /*<<< orphan*/ ,struct expression**) ; 
 int /*<<< orphan*/  next_address ; 
 scalar_t__ next_section ; 
 struct expression* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct value*) ; 
 int /*<<< orphan*/  FUNC16 (struct value*) ; 
 struct value* FUNC17 (struct type*,int /*<<< orphan*/ ) ; 
 struct value* FUNC18 (struct value*) ; 

void
FUNC19 (char *exp, int from_tty)
{
  struct expression *expr;
  struct format_data fmt;
  struct cleanup *old_chain;
  struct value *val;

  fmt.format = last_format;
  fmt.size = last_size;
  fmt.count = 1;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = FUNC7 (&exp, last_format, last_size);
    }

  /* If we have an expression, evaluate it and use it as the address.  */

  if (exp != 0 && *exp != 0)
    {
      expr = FUNC14 (exp);
      /* Cause expression not to be there any more
         if this command is repeated with Newline.
         But don't clobber a user-defined command's definition.  */
      if (from_tty)
	*exp = 0;
      old_chain = FUNC13 (free_current_contents, &expr);
      val = FUNC10 (expr);
      if (FUNC0 (FUNC5 (val)) == TYPE_CODE_REF)
	val = FUNC18 (val);
      /* In rvalue contexts, such as this, functions are coerced into
         pointers to functions.  This makes "x/i main" work.  */
      if (/* last_format == 'i'  && */ 
	  FUNC0 (FUNC5 (val)) == TYPE_CODE_FUNC
	   && FUNC4 (val) == lval_memory)
	next_address = FUNC1 (val);
      else
	next_address = FUNC16 (val);
      if (FUNC2 (val))
	next_section = FUNC2 (val);
      FUNC8 (old_chain);
    }

  FUNC9 (fmt, next_address, next_section);

  /* If the examine succeeds, we remember its size and format for next time.  */
  last_size = fmt.size;
  last_format = fmt.format;

  /* Set a couple of internal variables if appropriate. */
  if (last_examine_value)
    {
      /* Make last address examined available to the user as $_.  Use
         the correct pointer type.  */
      struct type *pointer_type
	= FUNC12 (FUNC5 (last_examine_value));
      FUNC15 (FUNC11 ("_"),
		       FUNC17 (pointer_type,
					   last_examine_address));

      /* Make contents of last address examined available to the user as $__. */
      /* If the last value has not been fetched from memory then don't
         fetch it now - instead mark it by voiding the $__ variable. */
      if (FUNC3 (last_examine_value))
	FUNC15 (FUNC11 ("__"),
			 FUNC6 (builtin_type_void));
      else
	FUNC15 (FUNC11 ("__"), last_examine_value);
    }
}