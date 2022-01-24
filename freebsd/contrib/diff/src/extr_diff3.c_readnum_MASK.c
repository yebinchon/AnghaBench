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
typedef  int lin ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 

__attribute__((used)) static char *
FUNC1 (char *s, lin *pnum)
{
  unsigned char c = *s;
  lin num = 0;

  if (! FUNC0 (c))
    return 0;

  do
    {
      num = c - '0' + num * 10;
      c = *++s;
    }
  while (FUNC0 (c));

  *pnum = num;
  return s;
}