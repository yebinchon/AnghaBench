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
 long FUNC0 (long,long,int) ; 

long
FUNC1 (long a, long b)
{
  int neg = 0;
  long res;

  if (a < 0)
    {
      a = -a;
      neg = 1;
    }

  if (b < 0)
    b = -b;

  res = FUNC0 (a, b, 1);

  if (neg)
    res = -res;

  return res;
}