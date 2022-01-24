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
typedef  enum auto_boolean { ____Placeholder_auto_boolean } auto_boolean ;

/* Variables and functions */
 int AUTO_BOOLEAN_AUTO ; 
 int AUTO_BOOLEAN_FALSE ; 
 int AUTO_BOOLEAN_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static enum auto_boolean
FUNC4 (const char *arg)
{
  if (arg != NULL && *arg != '\0')
    {
      int length = FUNC2 (arg);
      while (FUNC1 (arg[length - 1]) && length > 0)
	length--;
      if (FUNC3 (arg, "on", length) == 0
	  || FUNC3 (arg, "1", length) == 0
	  || FUNC3 (arg, "yes", length) == 0
	  || FUNC3 (arg, "enable", length) == 0)
	return AUTO_BOOLEAN_TRUE;
      else if (FUNC3 (arg, "off", length) == 0
	       || FUNC3 (arg, "0", length) == 0
	       || FUNC3 (arg, "no", length) == 0
	       || FUNC3 (arg, "disable", length) == 0)
	return AUTO_BOOLEAN_FALSE;
      else if (FUNC3 (arg, "auto", length) == 0
	       || (FUNC3 (arg, "-1", length) == 0 && length > 1))
	return AUTO_BOOLEAN_AUTO;
    }
  FUNC0 ("\"on\", \"off\" or \"auto\" expected.");
  return AUTO_BOOLEAN_AUTO; /* pacify GCC */
}