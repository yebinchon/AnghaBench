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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3 (char *arg)
{
  int length;

  if (!arg || !*arg)
    return 1;

  length = FUNC1 (arg);

  while (arg[length - 1] == ' ' || arg[length - 1] == '\t')
    length--;

  if (FUNC2 (arg, "on", length) == 0
      || FUNC2 (arg, "1", length) == 0
      || FUNC2 (arg, "yes", length) == 0
      || FUNC2 (arg, "enable", length) == 0)
    return 1;
  else if (FUNC2 (arg, "off", length) == 0
	   || FUNC2 (arg, "0", length) == 0
	   || FUNC2 (arg, "no", length) == 0
	   || FUNC2 (arg, "disable", length) == 0)
    return 0;
  else
    {
      FUNC0 ("\"on\" or \"off\" expected.");
      return 0;
    }
}