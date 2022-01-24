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
typedef  int u16_t ;
struct TYPE_2__ {scalar_t__ wlanMode; int /*<<< orphan*/  tick; } ;

/* Variables and functions */
 int ZM_ERR_TX_PORT_DISABLED ; 
 int /*<<< orphan*/  ZM_EXTERNAL_ALLOC_BUF ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int /*<<< orphan*/  ZM_LV_2 ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_IBSS ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ZM_PORT_DISABLED ; 
 int ZM_SUCCESS ; 
 TYPE_1__* wd ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

u16_t FUNC13(zdev_t* dev, zbuf_t* buf, u16_t port)
{
    u16_t err, ret;

    FUNC12(dev);

    FUNC0(dev, wd->tick);
    FUNC10(ZM_LV_2, "zfiTxSendEth(), port=", port);
    /* Return error if port is disabled */
    if ((err = FUNC7(dev, buf, port)) == ZM_PORT_DISABLED)
    {
        err = ZM_ERR_TX_PORT_DISABLED;
        goto zlError;
    }

#if 1
    if ((wd->wlanMode == ZM_MODE_AP) && (port < 0x20))
    {
        /* AP : Buffer frame for power saving STA */
        if ((ret = FUNC1(dev, buf, port)) == 1)
        {
            return ZM_SUCCESS;
        }
    }
    else
#endif
    if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        if ( FUNC2(dev) )
        {
            /*check ZM_ENABLE_POWER_SAVE flag*/
            FUNC3(dev);
        }
    }
#ifdef ZM_ENABLE_IBSS_PS
    /* IBSS power-saving mode */
    else if ( wd->wlanMode == ZM_MODE_IBSS )
    {
        if ( zfStaIbssPSQueueData(dev, buf) )
        {
            return ZM_SUCCESS;
        }
    }
#endif

#if 1
    //if ( wd->bQoSEnable )
    if (1)
    {
        /* Put to VTXQ[ac] */
        ret = FUNC5(dev, buf);

        /* Push VTXQ[ac] */
        FUNC4(dev);
    }
    else
    {
        ret = FUNC8(dev, buf, port, ZM_EXTERNAL_ALLOC_BUF, 0);
    }

    return ret;
#else
    return zfTxSendEth(dev, buf, port, ZM_EXTERNAL_ALLOC_BUF, 0);
#endif

zlError:
    FUNC11(ZM_LV_1, "Tx Comp err=", err);

    FUNC9(dev, buf, err);
    return err;
}