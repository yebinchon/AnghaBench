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
typedef  int ULONGEST ;
typedef  int LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 

int
FUNC1 (const char str[], int k, LONGEST * R, int *new_k)
{
  ULONGEST RU;

  if (!FUNC0 (str[k]))
    return 0;

  /* Do it the hard way so as not to make any assumption about 
     the relationship of unsigned long (%lu scan format code) and
     LONGEST. */
  RU = 0;
  while (FUNC0 (str[k]))
    {
      RU = RU * 10 + (str[k] - '0');
      k += 1;
    }

  if (str[k] == 'm')
    {
      if (R != NULL)
	*R = (-(LONGEST) (RU - 1)) - 1;
      k += 1;
    }
  else if (R != NULL)
    *R = (LONGEST) RU;

  /* NOTE on the above: Technically, C does not say what the results of 
     - (LONGEST) RU or (LONGEST) -RU are for RU == largest positive
     number representable as a LONGEST (although either would probably work
     in most implementations).  When RU>0, the locution in the then branch
     above is always equivalent to the negative of RU. */

  if (new_k != NULL)
    *new_k = k;
  return 1;
}