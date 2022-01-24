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
struct net_device {TYPE_1__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  (* set_proc ) (TYPE_1__*,char*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  ioctl_if; int /*<<< orphan*/  ioctl_if_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  OS_Cookie; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;
typedef  TYPE_2__* POS_COOKIE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  INT_MAIN ; 
 int /*<<< orphan*/  MAIN_MBSSID ; 
 TYPE_5__* PRTMP_PRIVATE_SET_PROC ; 
 TYPE_5__* RTMP_PRIVATE_SUPPORT_PROC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, struct iw_request_info *info,
			 void *w, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;
	POS_COOKIE pObj = (POS_COOKIE)pAdapter->OS_Cookie;
	char *this_char = extra;
	char *value;
	int  Status=0;

	{
		pObj->ioctl_if_type = INT_MAIN;
        pObj->ioctl_if = MAIN_MBSSID;
	}

	//check if the interface is down
    	if(!FUNC1(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
    	{
      		FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
			return -ENETDOWN;
    	}

	if (!*this_char)
		return -EINVAL;

	if ((value = FUNC2(this_char, '=')) != NULL)
	    *value++ = 0;

	if (!value)
	    return -EINVAL;

	// reject setting nothing besides ANY ssid(ssidLen=0)
    if (!*value && (FUNC3(this_char, "SSID") != 0))
        return -EINVAL;

	for (PRTMP_PRIVATE_SET_PROC = RTMP_PRIVATE_SUPPORT_PROC; PRTMP_PRIVATE_SET_PROC->name; PRTMP_PRIVATE_SET_PROC++)
	{
	    if (FUNC3(this_char, PRTMP_PRIVATE_SET_PROC->name) == 0)
	    {
	        if(!PRTMP_PRIVATE_SET_PROC->set_proc(pAdapter, value))
	        {	//FALSE:Set private failed then return Invalid argument
			    Status = -EINVAL;
	        }
		    break;	//Exit for loop.
	    }
	}

	if(PRTMP_PRIVATE_SET_PROC->name == NULL)
	{  //Not found argument
	    Status = -EINVAL;
	    FUNC0(RT_DEBUG_TRACE, ("===>rt_ioctl_setparam:: (iwpriv) Not Support Set Command [%s=%s]\n", this_char, value));
	}

    return Status;
}