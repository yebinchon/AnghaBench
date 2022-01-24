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
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 char* FUNC0 (char const*,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 

char *
FUNC7 (const char *physname)
{
  char *ret = NULL;
  const char *end;
  int depth = 0;
  char *demangled_name = FUNC0 (physname, DMGL_ANSI | DMGL_PARAMS);

  if (demangled_name == NULL)
    return NULL;

  end = FUNC1 (demangled_name);
  if (end != NULL)
    {
      char *args;
      int len;

      /* Skip "::".  */
      end = end + 2;

      /* Find the argument list, if any.  */
      args = FUNC3 (end, '(');
      if (args == NULL)
	len = FUNC4 (end + 2);
      else
	{
	  args --;
	  while (*args == ' ')
	    args --;
	  len = args - end + 1;
	}
      ret = FUNC6 (len + 1);
      FUNC2 (ret, end, len);
      ret[len] = 0;
    }

  FUNC5 (demangled_name);
  return ret;
}