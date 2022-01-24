#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  abyCntRxPattern; int /*<<< orphan*/  dwCntRxFrmLength; } ;
typedef  TYPE_1__* PSStatCounter ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC2 (
    PSStatCounter   pStatistic,
    BYTE            byRSR,
    BYTE            byNewRSR,
    BYTE            byRxSts,
    BYTE            byRxRate,
    PBYTE           pbyBuffer,
    UINT            cbFrameLength
    )
{
    FUNC0(
                    pStatistic,
                    byRSR,
                    byNewRSR,
                    byRxSts,
                    byRxRate,
                    pbyBuffer,
                    cbFrameLength
                    );

    // rx length
    pStatistic->dwCntRxFrmLength = cbFrameLength;
    // rx pattern, we just see 10 bytes for sample
    FUNC1(pStatistic->abyCntRxPattern, (PBYTE)pbyBuffer, 10);
}