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
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 int MAC_MAX_CONTEXT_SIZE_PAGE0 ; 
 int MAC_MAX_CONTEXT_SIZE_PAGE1 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3 (DWORD_PTR dwIoBase, PBYTE pbyCxtBuf)
{
    int         ii;

    // read page0 register
    for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE0; ii++) {
        FUNC2((dwIoBase + ii), (pbyCxtBuf + ii));
    }

    FUNC1(dwIoBase);

    // read page1 register
    for (ii = 0; ii < MAC_MAX_CONTEXT_SIZE_PAGE1; ii++) {
        FUNC2((dwIoBase + ii), (pbyCxtBuf + MAC_MAX_CONTEXT_SIZE_PAGE0 + ii));
    }

    FUNC0(dwIoBase);
}