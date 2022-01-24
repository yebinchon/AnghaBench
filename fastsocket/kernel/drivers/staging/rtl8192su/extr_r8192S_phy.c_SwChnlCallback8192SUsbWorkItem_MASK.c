#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct r8192_priv {void* SwChnlInProgress; int /*<<< orphan*/  chan; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ bInSetPower; } ;
struct TYPE_4__ {void* SwChnlInProgress; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  COMP_TRACE ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 TYPE_2__* pAdapter ; 
 TYPE_1__* pHalData ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct net_device *dev )
{
	struct r8192_priv *priv = FUNC2(dev);

	FUNC0(COMP_TRACE, "==> SwChnlCallback8192SUsbWorkItem()\n");
#ifdef TO_DO_LIST
	if(pAdapter->bInSetPower && RT_USB_CANNOT_IO(pAdapter))
	{
		RT_TRACE(COMP_SCAN, DBG_LOUD, ("<== SwChnlCallback8192SUsbWorkItem() SwChnlInProgress FALSE driver sleep or unload\n"));

		pHalData->SwChnlInProgress = FALSE;
		return;
	}
#endif
	FUNC3(dev, priv->chan);
	priv->SwChnlInProgress = FALSE;

	FUNC0(COMP_TRACE, "<== SwChnlCallback8192SUsbWorkItem()\n");
}