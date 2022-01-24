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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC5 (tree fn)
{
  if (FUNC3 (fn))
    {
      if (FUNC4 (fn))
	return "static member function";
      else if (FUNC1 (fn))
	return "copy constructor";
      else if (FUNC0 (fn))
	return "constructor";
      else if (FUNC2 (fn))
	return "destructor";
      else
	return "member function";
    }
  else
    return "function";
}