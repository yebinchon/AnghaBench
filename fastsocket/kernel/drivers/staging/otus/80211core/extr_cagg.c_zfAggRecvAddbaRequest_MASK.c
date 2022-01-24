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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u16_t ;
struct aggBaFrameParameter {int ba_parameter; int ba_policy; int tid; int buffer_size; int ba_timeout; int ba_start_seq; int /*<<< orphan*/  dialog; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int ZM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct aggBaFrameParameter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct aggBaFrameParameter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t   FUNC5(zdev_t* dev, zbuf_t* buf)
{
    //u16_t dialog;
    struct aggBaFrameParameter bf;
    u16_t i;
    //zmw_get_wlan_dev(dev);

    //zmw_declare_for_critical_section();

    bf.buf = buf;
    bf.dialog = FUNC3(dev, buf, 26);
    /*
     * ba parameter set
     */
    bf.ba_parameter = FUNC4(dev, buf, 27);
    bf.ba_policy   = (bf.ba_parameter >> 1) & 1;
    bf.tid         = (bf.ba_parameter >> 2) & 0xF;
    bf.buffer_size = (bf.ba_parameter >> 6);
    /*
     * BA timeout value
     */
    bf.ba_timeout = FUNC4(dev, buf, 29);
    /*
     * BA starting sequence number
     */
    bf.ba_start_seq = FUNC4(dev, buf, 31) >> 4;

    i=26;
    while(i < 32) {
        FUNC2("Recv ADDBA Req:", FUNC3(dev,buf,i));
        i++;
    }

    FUNC1(dev, &bf);

    FUNC0(dev, buf, &bf);

    return ZM_SUCCESS;
}