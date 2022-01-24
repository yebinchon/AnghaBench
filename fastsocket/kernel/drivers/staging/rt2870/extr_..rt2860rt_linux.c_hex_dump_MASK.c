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
 scalar_t__ RTDebugLevel ; 
 scalar_t__ RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(char *str, unsigned char *pSrcBufVA, unsigned int SrcBufLen)
{
	unsigned char *pt;
	int x;

	if (RTDebugLevel < RT_DEBUG_TRACE)
		return;

	pt = pSrcBufVA;
	FUNC0("%s: %p, len = %d\n",str,  pSrcBufVA, SrcBufLen);
	for (x=0; x<SrcBufLen; x++)
	{
		if (x % 16 == 0)
			FUNC0("0x%04x : ", x);
		FUNC0("%02x ", ((unsigned char)pt[x]));
		if (x%16 == 15) FUNC0("\n");
	}
	FUNC0("\n");
}