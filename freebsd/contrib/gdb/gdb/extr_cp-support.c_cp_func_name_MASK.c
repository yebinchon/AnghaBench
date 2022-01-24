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
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 

char *
FUNC2 (const char *full_name)
{
  const char *previous_component = full_name;
  const char *next_component;

  if (!full_name)
    return NULL;

  for (next_component = (previous_component
			 + FUNC0 (previous_component));
       *next_component == ':';
       next_component = (previous_component
			 + FUNC0 (previous_component)))
    {
      /* Skip '::'.  */
      previous_component = next_component + 2;
    }

  return FUNC1 (previous_component);
}