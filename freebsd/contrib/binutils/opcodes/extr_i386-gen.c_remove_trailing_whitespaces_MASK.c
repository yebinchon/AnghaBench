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
 size_t FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *str)
{
  size_t last = FUNC1 (str);

  if (last == 0)
    return;

  do
    {
      last--;
      if (FUNC0 (str [last]))
	str[last] = '\0';
      else
	break;
    }
  while (last != 0);
}