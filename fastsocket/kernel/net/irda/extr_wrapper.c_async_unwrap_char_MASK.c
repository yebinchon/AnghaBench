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
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  iobuff_t ;
typedef  int __u8 ;

/* Variables and functions */
#define  BOF 130 
#define  CE 129 
#define  EOF 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net_device_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_device_stats*,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct net_device *dev,
		       struct net_device_stats *stats,
		       iobuff_t *rx_buff, __u8 byte)
{
	switch(byte) {
	case CE:
		FUNC1(dev, stats, rx_buff, byte);
		break;
	case BOF:
		FUNC0(dev, stats, rx_buff, byte);
		break;
	case EOF:
		FUNC2(dev, stats, rx_buff, byte);
		break;
	default:
		FUNC3(dev, stats, rx_buff, byte);
		break;
	}
}