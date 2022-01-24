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
 unsigned int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

unsigned int
FUNC2 (const char *name)
{
  unsigned int current_len = FUNC0 (name);
  unsigned int previous_len = 0;

  while (name[current_len] != '\0')
    {
      FUNC1 (name[current_len] == ':');
      previous_len = current_len;
      /* Skip the '::'.  */
      current_len += 2;
      current_len += FUNC0 (name + current_len);
    }

  return previous_len;
}