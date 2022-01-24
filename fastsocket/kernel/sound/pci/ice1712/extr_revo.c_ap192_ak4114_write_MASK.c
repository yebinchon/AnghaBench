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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int AK4114_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,unsigned int) ; 
 unsigned int FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(void *private_data, unsigned char addr,
			       unsigned char data)
{
	struct snd_ice1712 *ice = private_data;
	unsigned int tmp, addrdata;

	tmp = FUNC1(ice);
	addrdata = (AK4114_ADDR << 6) | 0x20 | (addr & 0x1f);
	addrdata = (addrdata << 8) | data;
	FUNC2(ice, tmp, addrdata, 15);
	FUNC0(ice, tmp);
}