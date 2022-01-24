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
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct type {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RETURN_VALUE_STRUCT_CONVENTION ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 int /*<<< orphan*/  Val_no_prettyprint ; 
 struct value* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC7 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC12 (struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC13 (struct value*) ; 
 struct value* FUNC14 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_registers ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ui_stream* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 
 struct value* FUNC20 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22 (int struct_return, struct type *value_type)
{
  struct cleanup *old_chain;
  struct ui_stream *stb;
  struct value *value;

  if (!struct_return)
    {
      /* The return value can be found in the inferior's registers.  */
      value = FUNC14 (value_type, stop_registers);
    }
  /* FIXME: cagney/2004-01-17: When both return_value and
     extract_returned_value_address are available, should use that to
     find the address of and then extract the returned value.  */
  /* FIXME: 2003-09-27: When returning from a nested inferior function
     call, it's possible (with no help from the architecture vector)
     to locate and return/print a "struct return" value.  This is just
     a more complicated case of what is already being done in in the
     inferior function call code.  In fact, when inferior function
     calls are made async, this will likely be made the norm.  */
  else if (FUNC11 (current_gdbarch))
    /* We cannot determine the contents of the structure because it is
       on the stack, and we don't know where, since we did not
       initiate the call, as opposed to the call_function_by_hand
       case.  */
    {
      FUNC9 (FUNC10 (current_gdbarch, value_type,
					NULL, NULL, NULL)
		  == RETURN_VALUE_STRUCT_CONVENTION);
      FUNC19 (uiout, "Value returned has type: ");
      FUNC17 (uiout, "return-type", FUNC4 (value_type));
      FUNC19 (uiout, ".");
      FUNC19 (uiout, " Cannot determine contents\n");
      return;
    }
  else
    {
      if (FUNC2 ())
	{
	  CORE_ADDR addr = FUNC1 (stop_registers);
	  if (!addr)
	    FUNC8 ("Function return value unknown.");
	  value = FUNC20 (value_type, addr, NULL);
	}
      else
	{
	  /* It is "struct return" yet the value is being extracted,
             presumably from registers, using EXTRACT_RETURN_VALUE.
             This doesn't make sense.  Unfortunately, the legacy
             interfaces allowed this behavior.  Sigh!  */
	  value = FUNC6 (value_type);
	  FUNC0 (value_type);
	  /* If the function returns void, don't bother fetching the
	     return value.  */
	  FUNC3 (value_type, stop_registers,
				FUNC5 (value));
	}
    }

  /* Print it.  */
  stb = FUNC18 (uiout);
  old_chain = FUNC12 (stb);
  FUNC19 (uiout, "Value returned is ");
  FUNC15 (uiout, "gdb-result-var", "$%d",
		    FUNC13 (value));
  FUNC19 (uiout, " = ");
  FUNC21 (value, stb->stream, 0, Val_no_prettyprint);
  FUNC16 (uiout, "return-value", stb);
  FUNC19 (uiout, "\n");
  FUNC7 (old_chain);
}