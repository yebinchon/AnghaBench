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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (pretty_printer *buffer, tree domain, int spc, int flags)
{
  FUNC6 (buffer, '[');
  if (domain)
    {
      tree min = FUNC2 (domain);
      tree max = FUNC1 (domain);

      if (min && max
	  && FUNC5 (min)
	  && FUNC4 (max, 0))
	FUNC8 (buffer, FUNC0 (max) + 1);
      else
	{
	  if (min)
	    FUNC3 (buffer, min, spc, flags, false);
	  FUNC6 (buffer, ':');
	  if (max)
	    FUNC3 (buffer, max, spc, flags, false);
	}
    }
  else
    FUNC7 (buffer, "<unknown>");
  FUNC6 (buffer, ']');
}