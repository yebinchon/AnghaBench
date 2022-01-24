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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {int /*<<< orphan*/  DFSEnable; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
#define  ZM_WLAN_BLOCK_ACK_ACTION_FRAME 128 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC5(zdev_t* dev, zbuf_t* buf)
{
    u8_t category, actionDetails;
    FUNC3(dev);

    category = FUNC4(dev, buf, 24);
    actionDetails = FUNC4(dev, buf, 25);
    switch (category)
    {
        case 0:		//Spectrum Management
	        switch(actionDetails)
	        {
	        	case 0:			//Measurement Request
	        		break;
	        	case 1:			//Measurement Report
	        		//ProcessActionSpectrumFrame_MeasurementReport(Adapter,pActionBody+3);
	        		break;
	        	case 2:			//TPC request
                    //if (wd->sta.TPCEnable)
                    //    zfStaUpdateDot11HTPC(dev, buf);
	        		break;
	        	case 3:			//TPC report
                    //if (wd->sta.TPCEnable)
                    //    zfStaUpdateDot11HTPC(dev, buf);
	        		break;
	        	case 4:			//Channel Switch Announcement
                    if (wd->sta.DFSEnable)
                        FUNC1(dev, buf);
	        		break;
	        	default:
	        		FUNC2("Action Frame contain not support action field ", actionDetails);
	        		break;
	        }
        	break;
        case ZM_WLAN_BLOCK_ACK_ACTION_FRAME:
            FUNC0(dev, buf);
            break;
        case 17:	//Qos Management
        	break;
    }

    return 0;
}