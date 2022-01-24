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
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_FUNC ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_METHOD ; 
 int TYPE_CODE_PTR ; 
 int FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 struct type* FUNC4 (struct value*) ; 
 struct type* builtin_type_int ; 
 struct type* FUNC5 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct value* FUNC8 (struct value*) ; 
 scalar_t__ FUNC9 (struct value*) ; 
 scalar_t__ FUNC10 (struct value*) ; 

CORE_ADDR
FUNC11 (struct value *function, struct type **retval_type)
{
  struct type *ftype = FUNC5 (FUNC4 (function));
  enum type_code code = FUNC0 (ftype);
  struct type *value_type;
  CORE_ADDR funaddr;

  /* If it's a member function, just look at the function
     part of it.  */

  /* Determine address to call.  */
  if (code == TYPE_CODE_FUNC || code == TYPE_CODE_METHOD)
    {
      funaddr = FUNC3 (function);
      value_type = FUNC2 (ftype);
    }
  else if (code == TYPE_CODE_PTR)
    {
      funaddr = FUNC9 (function);
      ftype = FUNC5 (FUNC2 (ftype));
      if (FUNC0 (ftype) == TYPE_CODE_FUNC
	  || FUNC0 (ftype) == TYPE_CODE_METHOD)
	{
	  funaddr = FUNC7 (current_gdbarch,
							funaddr,
							&current_target);
	  value_type = FUNC2 (ftype);
	}
      else
	value_type = builtin_type_int;
    }
  else if (code == TYPE_CODE_INT)
    {
      /* Handle the case of functions lacking debugging info.
         Their values are characters since their addresses are char */
      if (FUNC1 (ftype) == 1)
	funaddr = FUNC9 (FUNC8 (function));
      else
	/* Handle integer used as address of a function.  */
	funaddr = (CORE_ADDR) FUNC10 (function);

      value_type = builtin_type_int;
    }
  else
    FUNC6 ("Invalid data type for function to be called.");

  *retval_type = value_type;
  return funaddr;
}