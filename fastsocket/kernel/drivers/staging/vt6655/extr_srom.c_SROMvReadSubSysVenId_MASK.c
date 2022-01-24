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
typedef  scalar_t__ PDWORD ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1 (DWORD_PTR dwIoBase, PDWORD pdwSubSysVenId)
{
    PBYTE   pbyData;

    pbyData = (PBYTE)pdwSubSysVenId;
    // sub vendor
    *pbyData = FUNC0(dwIoBase, 6);
    *(pbyData+1) = FUNC0(dwIoBase, 7);
    // sub system
    *(pbyData+2) = FUNC0(dwIoBase, 8);
    *(pbyData+3) = FUNC0(dwIoBase, 9);
}