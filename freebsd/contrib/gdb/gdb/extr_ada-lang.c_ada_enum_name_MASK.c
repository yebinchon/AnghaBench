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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char const*,char*,int*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*,char*) ; 

const char *
FUNC6 (const char *name)
{
  char *tmp;

  while (1)
    {
      if ((tmp = FUNC5 (name, "__")) != NULL)
	name = tmp + 2;
      else if ((tmp = FUNC4 (name, '.')) != NULL)
	name = tmp + 1;
      else
	break;
    }

  if (name[0] == 'Q')
    {
      static char result[16];
      int v;
      if (name[1] == 'U' || name[1] == 'W')
	{
	  if (FUNC3 (name + 2, "%x", &v) != 1)
	    return name;
	}
      else
	return name;

      if (FUNC0 (v) && FUNC1 (v))
	FUNC2 (result, "'%c'", v);
      else if (name[1] == 'U')
	FUNC2 (result, "[\"%02x\"]", v);
      else
	FUNC2 (result, "[\"%04x\"]", v);

      return result;
    }
  else
    return name;
}