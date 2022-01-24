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
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TYPE_AC0DMA ; 
 int TYPE_TXDMA0 ; 

void FUNC2 (int iTxType, DWORD_PTR dwIoBase, DWORD dwCurrDescAddr)
{
    if(iTxType == TYPE_AC0DMA){
        FUNC0(dwIoBase, dwCurrDescAddr);
    }else if(iTxType == TYPE_TXDMA0){
        FUNC1(dwIoBase, dwCurrDescAddr);
    }
}