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
struct aggBaFrameParameter {int ba_parameter; int ba_policy; int tid; int buffer_size; void* ba_timeout; void* status_code; int /*<<< orphan*/  dialog; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {scalar_t__ wlanMode; int addbaComplete; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 int ZM_SUCCESS ; 
 TYPE_1__* wd ; 
 int* zcUpToAc ; 
 int FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t   FUNC5(zdev_t* dev, zbuf_t* buf)
{
    u16_t i,ac, aid=0;
    u16_t src[3];
    struct aggBaFrameParameter bf;

    FUNC2(dev);

    //zmw_declare_for_critical_section();

    src[0] = FUNC4(dev, buf, 10);
    src[1] = FUNC4(dev, buf, 12);
    src[2] = FUNC4(dev, buf, 14);

    if (wd->wlanMode == ZM_MODE_AP)
        aid = FUNC0(dev, src);


    bf.buf = buf;
    bf.dialog = FUNC3(dev, buf, 26);
    bf.status_code = FUNC4(dev, buf, 27);
    if (!bf.status_code)
    {
        wd->addbaComplete=1;
    }

    /*
     * ba parameter set
     */
    bf.ba_parameter = FUNC4(dev, buf, 29);
    bf.ba_policy   = (bf.ba_parameter >> 1) & 1;
    bf.tid         = (bf.ba_parameter >> 2) & 0xF;
    bf.buffer_size = (bf.ba_parameter >> 6);
    /*
     * BA timeout value
     */
    bf.ba_timeout = FUNC4(dev, buf, 31);

    i=26;
    while(i < 32) {
        FUNC1("Recv ADDBA Rsp:", FUNC3(dev,buf,i));
        i++;
    }

    ac = zcUpToAc[bf.tid&0x7] & 0x3;

    //zmw_enter_critical_section(dev);

    //wd->aggSta[aid].aggFlag[ac] = 0;

    //zmw_leave_critical_section(dev);

    return ZM_SUCCESS;
}