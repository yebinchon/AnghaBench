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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static int
FUNC1(int right_vol, int left_vol, int div, int bits,
	     int mixer)		/* Input or output mixer */
{
	int             left = left_vol * div / 100;
	int             right = right_vol * div / 100;


	if (bits & 0x10)
	  {
		  left |= mixer;
		  right |= mixer;
	  }
	if (bits == 0x03 || bits == 0x04)
	  {
		  FUNC0(0x80 | bits, 0x078B);
		  FUNC0(left, 0x078B);
		  right_vol = left_vol;
	} else
	  {
		  FUNC0(0x80 | 0x20 | bits, 0x078B);
		  FUNC0(left, 0x078B);
		  FUNC0(0x80 | 0x40 | bits, 0x078B);
		  FUNC0(right, 0x078B);
	  }

	return (left_vol | (right_vol << 8));
}