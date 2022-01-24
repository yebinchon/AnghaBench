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
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BIT16 ; 
 int BIT31 ; 
 int /*<<< orphan*/  RWCAM ; 
 int /*<<< orphan*/  WCAMI ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct net_device *dev, u8 addr, u32 data)
{
        FUNC0(dev, WCAMI, data);
        FUNC0(dev, RWCAM, BIT31|BIT16|(addr&0xff) );
}