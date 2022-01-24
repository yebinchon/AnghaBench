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
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,char const*) ; 

int
FUNC4 (const char *sym_name, const char *name, int wild)
{
  if (sym_name == NULL || name == NULL)
    return 0;
  else if (wild)
    return FUNC3 (name, FUNC2 (name), sym_name);
  else
    {
      int len_name = FUNC2 (name);
      return (FUNC0 (sym_name, name, len_name)
	      && FUNC1 (sym_name + len_name))
	|| (FUNC0 (sym_name, "_ada_", 5)
	    && FUNC0 (sym_name + 5, name, len_name)
	    && FUNC1 (sym_name + len_name + 5));
    }
}