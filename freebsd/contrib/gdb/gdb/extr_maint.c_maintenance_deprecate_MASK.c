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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  if (args == NULL || *args == '\0')
    {
      FUNC1 ("\"maintenance deprecate\" takes an argument, \n\
the command you want to deprecate, and optionally the replacement command \n\
enclosed in quotes.\n");
    }

  FUNC0 (args, 1);

}