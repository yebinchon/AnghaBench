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
 int FUNC0 (char const) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char const*,int) ; 
 char* FUNC4 (char const*,char) ; 

const char *
FUNC5 (const char *str)
{
  const char *name = FUNC1 (str);

  if (*str != '*' && (*name == '_' || *name == '@'))
    {
      const char *p = FUNC4 (name + 1, '@');

      if (p)
	{
	  ++name;
	  if (FUNC0 (p[1]))
	    name = FUNC3 (name, p - name);
	  else
	    {
	      FUNC2 (FUNC0 (*name));
	      name++;
	      FUNC2 (name == p);
	    }
	}
    }
  return name;
}