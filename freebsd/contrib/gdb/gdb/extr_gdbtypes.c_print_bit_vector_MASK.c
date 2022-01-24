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
typedef  int /*<<< orphan*/  B_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (B_TYPE *bits, int nbits)
{
  int bitno;

  for (bitno = 0; bitno < nbits; bitno++)
    {
      if ((bitno % 8) == 0)
	{
	  FUNC2 (" ");
	}
      if (FUNC0 (bits, bitno))
	{
	  FUNC1 ("1");
	}
      else
	{
	  FUNC1 ("0");
	}
    }
}