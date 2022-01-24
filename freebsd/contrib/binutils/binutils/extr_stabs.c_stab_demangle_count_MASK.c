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
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static unsigned int
FUNC1 (const char **pp)
{
  unsigned int count;

  count = 0;
  while (FUNC0 (**pp))
    {
      count *= 10;
      count += **pp - '0';
      ++*pp;
    }
  return count;
}