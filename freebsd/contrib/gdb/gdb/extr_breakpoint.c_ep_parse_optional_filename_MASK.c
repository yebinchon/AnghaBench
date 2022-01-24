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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static char *
FUNC1 (char **arg)
{
  static char filename[1024];
  char *arg_p = *arg;
  int i;
  char c;

  if ((*arg_p == '\0') || FUNC0 (*arg_p))
    return NULL;

  for (i = 0;; i++)
    {
      c = *arg_p;
      if (FUNC0 (c))
	c = '\0';
      filename[i] = c;
      if (c == '\0')
	break;
      arg_p++;
    }
  *arg = arg_p;

  return filename;
}