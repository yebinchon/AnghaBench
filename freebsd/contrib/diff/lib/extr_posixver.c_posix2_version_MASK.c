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
 long DEFAULT_POSIX2_VERSION ; 
 long INT_MAX ; 
 long INT_MIN ; 
 char* FUNC0 (char*) ; 
 long FUNC1 (char const*,char**,int) ; 

int
FUNC2 (void)
{
  long int v = DEFAULT_POSIX2_VERSION;
  char const *s = FUNC0 ("_POSIX2_VERSION");

  if (s && *s)
    {
      char *e;
      long int i = FUNC1 (s, &e, 10);
      if (! *e)
	v = i;
    }

  return v < INT_MIN ? INT_MIN : v < INT_MAX ? v : INT_MAX;
}