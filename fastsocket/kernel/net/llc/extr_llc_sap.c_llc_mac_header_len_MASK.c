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
struct trh_hdr {int dummy; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
#define  ARPHRD_ETHER 130 
#define  ARPHRD_IEEE802_TR 129 
#define  ARPHRD_LOOPBACK 128 

__attribute__((used)) static int FUNC0(unsigned short devtype)
{
	switch (devtype) {
	case ARPHRD_ETHER:
	case ARPHRD_LOOPBACK:
		return sizeof(struct ethhdr);
#ifdef CONFIG_TR
	case ARPHRD_IEEE802_TR:
		return sizeof(struct trh_hdr);
#endif
	}
	return 0;
}