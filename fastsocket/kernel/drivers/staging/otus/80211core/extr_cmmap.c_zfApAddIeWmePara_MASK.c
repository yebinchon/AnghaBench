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
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {scalar_t__ uapsdEnabled; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;

/* Variables and functions */
 int ZM_WLAN_EID_WIFI_IE ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

u16_t FUNC2(zdev_t* dev, zbuf_t* buf, u16_t offset, u16_t vap)
{
    FUNC0(dev);

    /* Element ID */
    FUNC1(dev, buf, offset++, ZM_WLAN_EID_WIFI_IE);

    /* Element Length */
    FUNC1(dev, buf, offset++, 24);

    /* OUI */
    FUNC1(dev, buf, offset++, 0x00);
    FUNC1(dev, buf, offset++, 0x50);
    FUNC1(dev, buf, offset++, 0xF2);
    FUNC1(dev, buf, offset++, 0x02);
    FUNC1(dev, buf, offset++, 0x01);
    FUNC1(dev, buf, offset++, 0x01);

    /* QoS Info */
    if (wd->ap.uapsdEnabled)
    {
        FUNC1(dev, buf, offset++, 0x81);
    }
    else
    {
    FUNC1(dev, buf, offset++, 0x01);
    }

    /* Reserved */
    FUNC1(dev, buf, offset++, 0x00);

    /* Best Effort AC parameters */
    FUNC1(dev, buf, offset++, 0x03);
    FUNC1(dev, buf, offset++, 0xA4);
    FUNC1(dev, buf, offset++, 0x00);
    FUNC1(dev, buf, offset++, 0x00);
    /* Backfround AC parameters */
    FUNC1(dev, buf, offset++, 0x27);
    FUNC1(dev, buf, offset++, 0xA4);
    FUNC1(dev, buf, offset++, 0x00);
    FUNC1(dev, buf, offset++, 0x00);
    /* Video AC parameters */
    FUNC1(dev, buf, offset++, 0x42);
    FUNC1(dev, buf, offset++, 0x43);
    FUNC1(dev, buf, offset++, 0x5E);
    FUNC1(dev, buf, offset++, 0x00);
    /* Voice AC parameters */
    FUNC1(dev, buf, offset++, 0x62);
    FUNC1(dev, buf, offset++, 0x32);
    FUNC1(dev, buf, offset++, 0x2F);
    FUNC1(dev, buf, offset++, 0x00);

    return offset;
}