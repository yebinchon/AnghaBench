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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

u32 FUNC3( u32 dwData, u32 DataLength)
{
	u32   HalfLength, i, j;
	u32   BitA, BitB;

	if ( DataLength <= 0)       return 0;   // No conversion is done.
	dwData = dwData & (0xffffffff >> (32 - DataLength));

	HalfLength = DataLength / 2;
	for ( i = 0, j = DataLength-1 ; i < HalfLength; i++, j--)
	{
		BitA = FUNC1( dwData, i);
		BitB = FUNC1( dwData, j);
		if (BitA && !BitB) {
			dwData = FUNC0( dwData, i);
			dwData = FUNC2( dwData, j);
		} else if (!BitA && BitB) {
			dwData = FUNC2( dwData, i);
			dwData = FUNC0( dwData, j);
		} else
		{
			// Do nothing since these two bits are of the save values.
		}
	}

	return dwData;
}