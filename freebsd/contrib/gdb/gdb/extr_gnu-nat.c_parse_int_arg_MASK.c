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
 int FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC2 (char *args, char *cmd_prefix)
{
  if (args)
    {
      char *arg_end;
      int val = FUNC1 (args, &arg_end, 10);
      if (*args && *arg_end == '\0')
	return val;
    }
  FUNC0 ("Illegal argument for \"%s\" command, should be an integer.", cmd_prefix);
}