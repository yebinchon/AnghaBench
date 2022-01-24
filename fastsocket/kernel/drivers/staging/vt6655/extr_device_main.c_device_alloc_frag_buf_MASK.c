#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_5__* skb; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; scalar_t__ rx_buf_sz; } ;
typedef  TYPE_1__* PSDevice ;
typedef  TYPE_2__* PSDeFragControlBlock ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__* FUNC1 (int) ; 

BOOL FUNC2(PSDevice pDevice, PSDeFragControlBlock pDeF) {

    pDeF->skb = FUNC1((int)pDevice->rx_buf_sz);
    if (pDeF->skb == NULL)
        return FALSE;
    FUNC0(pDeF->skb);
    pDeF->skb->dev = pDevice->dev;

    return TRUE;
}