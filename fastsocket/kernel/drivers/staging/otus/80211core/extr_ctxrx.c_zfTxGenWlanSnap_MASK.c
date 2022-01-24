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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC3(zdev_t* dev, zbuf_t* buf, u16_t* snap, u16_t* snaplen)
{
    u16_t removed;
	   u16_t etherType;
   	u16_t len;

	   len = FUNC1(dev, buf);
    if (len < 14) //Minimum Ethernet packet size, 14(Ether header)
    {
        /* TODO : Assert? */
        *snaplen = 0;
        return 0;
    }

    /* Generate RFC1042 header */
    etherType = (((u16_t)FUNC2(dev, buf, 12))<<8)
                + FUNC2(dev, buf, 13);

    //zm_debug_msg2("ethernet type or length = ", etherType);

    if (etherType > 1500)
    {
        /* ETHERNET format */
        removed = 12;
        snap[0] = 0xaaaa;
        snap[1] = 0x0003;
        if ((etherType ==0x8137) || (etherType == 0x80f3))
        {
            /* Bridge Tunnel */
            snap[2] = 0xF800;
        }
        else
        {
            /* RFC 1042 */
            snap[2] = 0x0000;
        }
        *snaplen = 6;

        if ( etherType == 0x888E )
        {
            FUNC0(dev, buf, 14);
        }
    }
    else
    {
        /* 802.3 format */
        removed = 14;
        *snaplen = 0;
    }

    return removed;
}