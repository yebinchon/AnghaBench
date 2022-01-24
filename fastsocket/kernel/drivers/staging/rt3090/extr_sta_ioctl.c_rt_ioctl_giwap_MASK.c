#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; void* sa_family; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  Bssid; } ;
struct TYPE_9__ {scalar_t__ WpaSupplicantUP; } ;
struct TYPE_8__ {int /*<<< orphan*/  Bssid; } ;
struct TYPE_11__ {TYPE_3__ MlmeAux; TYPE_2__ StaCfg; TYPE_1__ CommonCfg; } ;
typedef  TYPE_4__* PRTMP_ADAPTER ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 void* ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 scalar_t__ WPA_SUPPLICANT_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev,
		      struct iw_request_info *info,
		      struct sockaddr *ap_addr, char *extra)
{
	PRTMP_ADAPTER pAdapter = FUNC3(dev);

	if (pAdapter == NULL)
	{
		/* if 1st open fail, pAd will be free;
		   So the net_dev->priv will be NULL in 2rd open */
		return -ENETDOWN;
	}

	if (FUNC2(pAdapter) || FUNC0(pAdapter))
	{
		ap_addr->sa_family = ARPHRD_ETHER;
		FUNC4(ap_addr->sa_data, &pAdapter->CommonCfg.Bssid, ETH_ALEN);
	}
#ifdef WPA_SUPPLICANT_SUPPORT
    // Add for RT2870
    else if (pAdapter->StaCfg.WpaSupplicantUP != WPA_SUPPLICANT_DISABLE)
    {
        ap_addr->sa_family = ARPHRD_ETHER;
        memcpy(ap_addr->sa_data, &pAdapter->MlmeAux.Bssid, ETH_ALEN);
    }
#endif // WPA_SUPPLICANT_SUPPORT //
	else
	{
		FUNC1(RT_DEBUG_TRACE, ("IOCTL::SIOCGIWAP(=EMPTY)\n"));
		return -ENOTCONN;
	}

	return 0;
}