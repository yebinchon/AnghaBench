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
 char* FUNC1 (char*,char) ; 

void
FUNC2(char *otherdom, char *localdom)
{
  char *p1, *p2;

  if ((p1 = FUNC1(otherdom, '.')) &&
      (p2 = FUNC1(localdom, '.')) &&
      FUNC0(p1 + 1, p2 + 1))
    *p1 = '\0';
}