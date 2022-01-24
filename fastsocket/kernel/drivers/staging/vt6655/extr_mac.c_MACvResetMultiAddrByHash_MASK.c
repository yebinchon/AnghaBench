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
typedef  int UINT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3 (DWORD_PTR dwIoBase, BYTE byHashIdx)
{
    UINT uByteIdx;
    BYTE byBitMask;
    BYTE byOrgValue;

    // calculate byte position
    uByteIdx = byHashIdx / 8;
    FUNC0(uByteIdx < 8);
    // calculate bit position
    byBitMask = 1;
    byBitMask <<= (byHashIdx % 8);
    // turn off the bit
    byOrgValue = FUNC1(dwIoBase, uByteIdx);
    FUNC2(dwIoBase, uByteIdx, (BYTE)(byOrgValue & (~byBitMask)));
}