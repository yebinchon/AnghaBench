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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (const char *carg)
{
  char *equal, *arg;
  int value;

  arg = FUNC5 (carg);
  equal = FUNC4 (arg, '=');
  if (!equal)
    FUNC0 ("%s: --param arguments should be of the form NAME=VALUE", arg);
  else
    {
      value = FUNC2 (equal + 1);
      if (value == -1)
	FUNC0 ("invalid --param value %qs", equal + 1);
      else
	{
	  *equal = '\0';
	  FUNC3 (arg, value);
	}
    }

  FUNC1 (arg);
}