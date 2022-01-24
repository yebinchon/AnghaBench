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
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 

char *
FUNC5 (const char *physname)
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
      ret = FUNC4 (end - demangled_name + 1);
      FUNC2 (ret, demangled_name, end - demangled_name);
      ret[end - demangled_name] = '\0';
    }

  FUNC3 (demangled_name);
  return ret;
}