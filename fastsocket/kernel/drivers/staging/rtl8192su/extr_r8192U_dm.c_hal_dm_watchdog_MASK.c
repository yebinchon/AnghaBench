#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r8192_priv {scalar_t__ bInHctTest; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mActingAsAp; } ;
struct TYPE_4__ {TYPE_1__ MgntInfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_2__* Adapter ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 struct r8192_priv* FUNC16 (struct net_device*) ; 

extern  void    FUNC17(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC16(dev);

	if(priv->bInHctTest)
		return;


	FUNC8(dev);

	// Add by hpfan 2008-03-11
	FUNC6(dev);
	FUNC11(dev); //moved by tynli
	FUNC4(dev);

	FUNC1(dev);

#ifdef TO_DO_LIST
	dm_CheckProtection(dev);
#endif

	// ====================================================
	// If any dynamic mechanism is ready, put it above this return;
	// ====================================================
	//if (IS_HARDWARE_TYPE_8192S(dev))
	return;

#ifdef TO_DO_LIST
	if(Adapter->MgntInfo.mActingAsAp)
	{
		AP_dm_CheckRateAdaptive(dev);
		//return;
	}
	else
#endif
	{
		FUNC7(dev);
	}
	FUNC14(dev);

	FUNC10(dev);
	FUNC12(dev);//LZM TMP 090302

	FUNC3(dev);

	FUNC9(dev);//LZM TMP 090302
	FUNC5(dev);

	FUNC15(dev);

	FUNC13(dev);

}