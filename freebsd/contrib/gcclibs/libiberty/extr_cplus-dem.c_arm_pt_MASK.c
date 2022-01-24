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
struct work_stuff {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARM_DEMANGLING ; 
 scalar_t__ AUTO_DEMANGLING ; 
 scalar_t__ EDG_DEMANGLING ; 
 scalar_t__ HP_DEMANGLING ; 
 int FUNC0 (char const**) ; 
 char* FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2 (struct work_stuff *work, const char *mangled,
        int n, const char **anchor, const char **args)
{
  /* Check if ARM template with "__pt__" in it ("parameterized type") */
  /* Allow HP also here, because HP's cfront compiler follows ARM to some extent */
  if ((ARM_DEMANGLING || HP_DEMANGLING) && (*anchor = FUNC1 (mangled, "__pt__")))
    {
      int len;
      *args = *anchor + 6;
      len = FUNC0 (args);
      if (len == -1)
	return 0;
      if (*args + len == mangled + n && **args == '_')
	{
	  ++*args;
	  return 1;
	}
    }
  if (AUTO_DEMANGLING || EDG_DEMANGLING)
    {
      if ((*anchor = FUNC1 (mangled, "__tm__"))
          || (*anchor = FUNC1 (mangled, "__ps__"))
          || (*anchor = FUNC1 (mangled, "__pt__")))
        {
          int len;
          *args = *anchor + 6;
          len = FUNC0 (args);
	  if (len == -1)
	    return 0;
          if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
              return 1;
            }
        }
      else if ((*anchor = FUNC1 (mangled, "__S")))
        {
 	  int len;
 	  *args = *anchor + 3;
 	  len = FUNC0 (args);
	  if (len == -1)
	    return 0;
 	  if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
 	      return 1;
            }
        }
    }

  return 0;
}