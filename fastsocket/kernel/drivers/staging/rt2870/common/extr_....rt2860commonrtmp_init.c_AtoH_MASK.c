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
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int* PUCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(char * src, UCHAR * dest, int destlen)
{
	char * srcptr;
	PUCHAR destTemp;

	srcptr = src;
	destTemp = (PUCHAR) dest;

	while(destlen--)
	{
		*destTemp = FUNC0(*srcptr++) << 4;    // Put 1st ascii byte in upper nibble.
		*destTemp += FUNC0(*srcptr++);      // Add 2nd ascii byte to above.
		destTemp++;
	}
}