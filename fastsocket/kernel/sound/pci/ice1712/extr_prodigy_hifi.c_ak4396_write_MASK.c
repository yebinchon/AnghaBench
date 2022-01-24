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
struct TYPE_2__ {int write_mask; int direction; } ;
struct snd_ice1712 {TYPE_1__ gpio; } ;

/* Variables and functions */
 int AK4396_ADDR ; 
 int AK4396_CCLK ; 
 int AK4396_CDTI ; 
 int AK4396_CSN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct snd_ice1712 *ice, unsigned int reg,
			 unsigned int data)
{
	unsigned int block;

	FUNC2(ice, AK4396_CSN|AK4396_CCLK|AK4396_CDTI);
	FUNC3(ice, ~(AK4396_CSN|AK4396_CCLK|AK4396_CDTI));
	/* latch must be low when writing */
	FUNC1(ice, AK4396_CSN, 0); 
	block =  ((AK4396_ADDR & 0x03) << 14) | (1 << 13) |
			((reg & 0x1f) << 8) | (data & 0xff);
	FUNC0(ice, block); /* REGISTER ADDRESS */
	/* release latch */
	FUNC1(ice, AK4396_CSN, 1);
	FUNC4(1);
	/* restore */
	FUNC3(ice, ice->gpio.write_mask);
	FUNC2(ice, ice->gpio.direction);
}