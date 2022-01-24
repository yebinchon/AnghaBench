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
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int EEP_MAX_CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1 (DWORD_PTR dwIoBase, PBYTE pbyEepromRegs)
{
    int     ii;

    // ii = Rom Address
    for (ii = 0; ii < EEP_MAX_CONTEXT_SIZE; ii++) {
        *pbyEepromRegs = FUNC0(dwIoBase,(BYTE) ii);
        pbyEepromRegs++;
    }
}