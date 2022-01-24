#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  PRTMP_ADAPTER ;
typedef  char* PCHAR ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 scalar_t__ FALSE ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 scalar_t__ MAX_LEN_OF_SSID ; 
 int /*<<< orphan*/  MEM_ALLOC_FLAG ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *data, char *essid)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;

	//check if the interface is down
    if(!FUNC3(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    {
       	FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
       	return -ENETDOWN;
    }

	if (data->flags)
	{
		PCHAR	pSsidString = NULL;

		// Includes null character.
		if (data->length > (IW_ESSID_MAX_SIZE + 1))
			return -E2BIG;

		pSsidString = (CHAR *) FUNC5(MAX_LEN_OF_SSID+1, MEM_ALLOC_FLAG);
		if (pSsidString)
		{
			FUNC2(pSsidString, MAX_LEN_OF_SSID+1);
			FUNC1(pSsidString, essid, data->length);
			if (FUNC4(pAdapter, pSsidString) == FALSE)
				return -EINVAL;
		}
		else
			return -ENOMEM;
	}
	else
	{
		// ANY ssid
		if (FUNC4(pAdapter, "") == FALSE)
			return -EINVAL;
    }
	return 0;
}