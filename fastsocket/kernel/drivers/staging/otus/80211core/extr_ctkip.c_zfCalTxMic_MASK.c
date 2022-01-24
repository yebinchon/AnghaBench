#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u16_t ;
struct zsMicVar {int dummy; } ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 TYPE_1__* wd ; 
 struct zsMicVar* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC2 (struct zsMicVar*) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct zsMicVar*) ; 
 struct zsMicVar* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC9(zdev_t *dev, zbuf_t *buf, u8_t *snap, u16_t snapLen, u16_t offset, u16_t *da, u16_t *sa, u8_t up, u8_t *mic)
{
    struct zsMicVar*  pMicKey;
    u16_t  i;
    u16_t len;
    u8_t bValue;
    u8_t qosType;
    u8_t *pDa = (u8_t *)da;
    u8_t *pSa = (u8_t *)sa;

    FUNC7(dev);

    /* need not check MIC if pMicKEy is equal to NULL */
    if ( wd->wlanMode == ZM_MODE_AP )
    {
        pMicKey = FUNC0(dev, buf, &qosType);

        if ( pMicKey == NULL )
            return;
    }
    else if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        pMicKey = FUNC4(dev, buf);

        if ( pMicKey == NULL )
        {
            FUNC6("pMicKey is NULL");
            return;
        }
    }
    else
    {
        return;
    }

    FUNC2(pMicKey);
    len = FUNC5(dev, buf);

    /* append DA */
    for(i = 0; i < 6; i++)
    {
        FUNC1(pDa[i], pMicKey);
    }

    /* append SA */
    for(i = 0; i < 6; i++)
    {
        FUNC1(pSa[i], pMicKey);
    }

    if (up != 0)
        FUNC1((up&0x7), pMicKey);
    else
        FUNC1(0, pMicKey);

    FUNC1(0, pMicKey);
    FUNC1(0, pMicKey);
    FUNC1(0, pMicKey);

    /* For Snap header */
    for(i = 0; i < snapLen; i++)
    {
        FUNC1(snap[i], pMicKey);
    }

    for(i = offset; i < len; i++)
    {
        bValue = FUNC8(dev, buf, i);
        FUNC1(bValue, pMicKey);
    }

    FUNC3(mic, pMicKey);
}