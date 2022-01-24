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
typedef  int /*<<< orphan*/  symbolS ;
typedef  scalar_t__ segT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char**,unsigned int*) ; 
 scalar_t__ undefined_section ; 

__attribute__((used)) static void
FUNC6 (symbolS *symp, symbolS *left, symbolS *right)
{
  char *file;
  unsigned int line;
  segT seg_left = FUNC1 (left);
  segT seg_right = right ? FUNC1 (right) : 0;

  if (FUNC5 (symp, &file, &line))
    {
      if (seg_left == undefined_section)
	FUNC4 (file, line,
		      FUNC2("undefined symbol `%s' in operation"),
		      FUNC0 (left));
      if (seg_right == undefined_section)
	FUNC4 (file, line,
		      FUNC2("undefined symbol `%s' in operation"),
		      FUNC0 (right));
      if (seg_left != undefined_section
	  && seg_right != undefined_section)
	{
	  if (right)
	    FUNC4 (file, line,
			  FUNC2("invalid sections for operation on `%s' and `%s'"),
			  FUNC0 (left), FUNC0 (right));
	  else
	    FUNC4 (file, line,
			  FUNC2("invalid section for operation on `%s'"),
			  FUNC0 (left));
	}

    }
  else
    {
      if (seg_left == undefined_section)
	FUNC3 (FUNC2("undefined symbol `%s' in operation setting `%s'"),
		FUNC0 (left), FUNC0 (symp));
      if (seg_right == undefined_section)
	FUNC3 (FUNC2("undefined symbol `%s' in operation setting `%s'"),
		FUNC0 (right), FUNC0 (symp));
      if (seg_left != undefined_section
	  && seg_right != undefined_section)
	{
	  if (right)
	    FUNC3 (FUNC2("invalid sections for operation on `%s' and `%s' setting `%s'"),
		    FUNC0 (left), FUNC0 (right), FUNC0 (symp));
	  else
	    FUNC3 (FUNC2("invalid section for operation on `%s' setting `%s'"),
		    FUNC0 (left), FUNC0 (symp));
	}
    }
}