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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsBssInfo {scalar_t__* extSupportedRates; int frequency; int EnableHT; int /*<<< orphan*/  SG40; int /*<<< orphan*/ * macaddr; } ;
struct TYPE_5__ {TYPE_1__* oppositeInfo; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcCell; int /*<<< orphan*/ * macAddr; } ;

/* Variables and functions */
 int ZM_HP_CAP_11N_ONE_TX_STREAM ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(zdev_t* dev, struct zsBssInfo* pBssInfo)
{
    int i;
    u8_t*  dst;
    u16_t  sa[3];
    int res;
    u32_t oneTxStreamCap;

    FUNC5(dev);

    FUNC1((u8_t*) sa, pBssInfo->macaddr, 6);

    res = FUNC3(dev, sa, &i);
    if ( res != 0 )
    {
        goto zlReturn;
    }

    dst = wd->sta.oppositeInfo[i].macAddr;
    FUNC1(dst, (u8_t *)sa, 6);

    oneTxStreamCap = (FUNC0(dev) & ZM_HP_CAP_11N_ONE_TX_STREAM);

    if (pBssInfo->extSupportedRates[1] != 0)
    {
        /* TODO : Handle 11n */
        if (pBssInfo->frequency < 3000)
        {
            /* 2.4GHz */
            if (pBssInfo->EnableHT == 1)
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, pBssInfo->SG40);
            else
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 1, pBssInfo->SG40);
        }
        else
        {
            /* 5GHz */
            if (pBssInfo->EnableHT == 1)
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, pBssInfo->SG40);
            else
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, pBssInfo->SG40);
        }
    }
    else
    {
        /* TODO : Handle 11n */
        if (pBssInfo->frequency < 3000)
        {
            /* 2.4GHz */
            if (pBssInfo->EnableHT == 1)
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 1, pBssInfo->SG40);
            else
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, 0, 1, pBssInfo->SG40);
        }
        else
        {
            /* 5GHz */
            if (pBssInfo->EnableHT == 1)
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, (oneTxStreamCap!=0)?3:2, 0, pBssInfo->SG40);
            else
                FUNC2(dev, &wd->sta.oppositeInfo[i].rcCell, 1, 0, pBssInfo->SG40);
        }
    }


    FUNC4(dev, i);
zlReturn:
    return 0;
}