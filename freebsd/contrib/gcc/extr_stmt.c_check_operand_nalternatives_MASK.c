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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int MAX_RECOG_ALTERNATIVES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char,char const*) ; 

__attribute__((used)) static bool
FUNC6 (tree outputs, tree inputs)
{
  if (outputs || inputs)
    {
      tree tmp = FUNC1 (outputs ? outputs : inputs);
      int nalternatives
	= FUNC5 (',', FUNC2 (FUNC3 (tmp)));
      tree next = inputs;

      if (nalternatives + 1 > MAX_RECOG_ALTERNATIVES)
	{
	  FUNC4 ("too many alternatives in %<asm%>");
	  return false;
	}

      tmp = outputs;
      while (tmp)
	{
	  const char *constraint
	    = FUNC2 (FUNC3 (FUNC1 (tmp)));

	  if (FUNC5 (',', constraint) != nalternatives)
	    {
	      FUNC4 ("operand constraints for %<asm%> differ "
		     "in number of alternatives");
	      return false;
	    }

	  if (FUNC0 (tmp))
	    tmp = FUNC0 (tmp);
	  else
	    tmp = next, next = 0;
	}
    }

  return true;
}