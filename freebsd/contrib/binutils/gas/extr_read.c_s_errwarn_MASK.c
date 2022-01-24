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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7 (int err)
{
  int len;
  /* The purpose for the conditional assignment is not to
     internationalize the directive itself, but that we need a
     self-contained message, one that can be passed like the
     demand_copy_C_string return value, and with no assumption on the
     location of the name of the directive within the message.  */
  char *msg
    = (err ? FUNC0(".error directive invoked in source file")
       : FUNC0(".warning directive invoked in source file"));

  if (!FUNC6 ())
    {
      if (*input_line_pointer != '\"')
	{
	  FUNC1 (FUNC0("%s argument must be a string"),
		  err ? ".error" : ".warning");
	  FUNC5 ();
	  return;
	}

      msg = FUNC3 (&len);
      if (msg == NULL)
	return;
    }

  if (err)
    FUNC1 ("%s", msg);
  else
    FUNC2 ("%s", msg);
  FUNC4 ();
}