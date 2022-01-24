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
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (size_t) ; 

__attribute__((used)) static char *
FUNC2 (char **optionvec, int count)
{
  int i;
  size_t size = 1;
  char *result;
  char *p;

  for (i = 0; i < count; i++)
    size += 1 + FUNC0 ((char *) 0, optionvec[i]);

  p = result = FUNC1 (size);

  for (i = 0; i < count; i++)
    {
      *p++ = ' ';
      p += FUNC0 (p, optionvec[i]);
    }

  *p = 0;
  return result;
}