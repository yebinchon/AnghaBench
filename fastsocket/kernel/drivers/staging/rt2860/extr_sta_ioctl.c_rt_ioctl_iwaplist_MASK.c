#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {char* sa_data; int /*<<< orphan*/  sa_family; } ;
struct net_device {TYPE_3__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {char* sa_data; int /*<<< orphan*/  sa_family; } ;
struct iw_point {int length; int flags; } ;
typedef  int /*<<< orphan*/  qual ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_7__ {int BssNr; TYPE_1__* BssEntry; } ;
struct TYPE_8__ {TYPE_2__ ScanTab; } ;
struct TYPE_6__ {int /*<<< orphan*/  Rssi; struct sockaddr* Bssid; } ;
typedef  TYPE_3__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int IW_MAX_AP ; 
 int MAC_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sockaddr**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ) ; 

int FUNC4(struct net_device *dev,
			struct iw_request_info *info,
			struct iw_point *data, char *extra)
{
 	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	struct sockaddr addr[IW_MAX_AP];
	struct iw_quality qual[IW_MAX_AP];
	int i;

   	//check if the interface is down
    if(!FUNC1(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
       	FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
		data->length = 0;
		return 0;
        //return -ENETDOWN;
	}

	for (i = 0; i <IW_MAX_AP ; i++)
	{
		if (i >=  pAdapter->ScanTab.BssNr)
			break;
		addr[i].sa_family = ARPHRD_ETHER;
			FUNC2(addr[i].sa_data, &pAdapter->ScanTab.BssEntry[i].Bssid, MAC_ADDR_LEN);
		FUNC3(pAdapter, &qual[i], pAdapter->ScanTab.BssEntry[i].Rssi);
	}
	data->length = i;
	FUNC2(extra, &addr, i*sizeof(addr[0]));
	data->flags = 1;		/* signal quality present (sort of) */
	FUNC2(extra + i*sizeof(addr[0]), &qual, i*sizeof(qual[i]));

	return 0;
}