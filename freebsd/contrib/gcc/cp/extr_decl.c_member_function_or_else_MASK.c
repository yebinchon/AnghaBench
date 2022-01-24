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
typedef  enum overload_flags { ____Placeholder_overload_flags } overload_flags ;

/* Variables and functions */
 int DTOR_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC1 (tree ctype, tree cur_type, enum overload_flags flags)
{
  if (ctype && ctype != cur_type)
    {
      if (flags == DTOR_FLAG)
	FUNC0 ("destructor for alien class %qT cannot be a member", ctype);
      else
	FUNC0 ("constructor for alien class %qT cannot be a member", ctype);
      return 0;
    }
  return 1;
}