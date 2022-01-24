#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u8_t ;
struct zsBssList {int bssCount; struct zsBssInfo* head; } ;
struct zsBssInfo {struct zsBssInfo* next; } ;
struct TYPE_4__ {int bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev, struct zsBssList* pBssList)
{
    struct zsBssInfo*   pBssInfo;
    struct zsBssInfo*   pDstBssInfo;
    u8_t   i;
    u8_t*  pMemList;
    u8_t*  pMemInfo;

    FUNC5(dev);

    FUNC3();

    pMemList = (u8_t*) pBssList;
    pMemInfo = pMemList + sizeof(struct zsBssList);
    pBssList->head = (struct zsBssInfo*) pMemInfo;

    FUNC4(dev);

    pBssInfo = wd->sta.bssList.head;
    pDstBssInfo = (struct zsBssInfo*) pMemInfo;
    pBssList->bssCount = wd->sta.bssList.bssCount;

    for( i=0; i<wd->sta.bssList.bssCount; i++ )
    {
        FUNC0((u8_t*)pDstBssInfo, (u8_t*)pBssInfo,
                sizeof(struct zsBssInfo));

        if ( pBssInfo->next != NULL )
        {
            pBssInfo = pBssInfo->next;
            pDstBssInfo->next = pDstBssInfo + 1;
            pDstBssInfo++;
        }
        else
        {
            FUNC2(i==(wd->sta.bssList.bssCount-1));
        }
    }

    FUNC6(dev);

    FUNC1(dev);
}