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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRSR ; 
 int BRSR_MBR_8185 ; 
 int MAX_RESP_RATE_SHIFT ; 
 int MIN_RESP_RATE_SHIFT ; 
 int /*<<< orphan*/  RESP_RATE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct net_device *dev)
{
	int i;
	u16 word;
	int basic_rate,min_rr_rate,max_rr_rate;

	basic_rate = FUNC0(240);
	min_rr_rate = FUNC0(60);
	max_rr_rate = FUNC0(240);

	FUNC2(dev, RESP_RATE,
			max_rr_rate<<MAX_RESP_RATE_SHIFT| min_rr_rate<<MIN_RESP_RATE_SHIFT);

	word  = FUNC1(dev, BRSR);
	word &= ~BRSR_MBR_8185;

	for(i=0;i<=basic_rate;i++)
		word |= (1<<i);

	FUNC3(dev, BRSR, word);
}