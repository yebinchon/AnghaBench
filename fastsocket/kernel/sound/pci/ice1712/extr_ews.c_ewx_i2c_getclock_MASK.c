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
struct snd_i2c_bus {struct snd_ice1712* private_data; } ;

/* Variables and functions */
 int ICE1712_EWX2496_SERIAL_CLOCK ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_i2c_bus *bus)
{
	struct snd_ice1712 *ice = bus->private_data;
	return FUNC0(ice, ICE1712_IREG_GPIO_DATA) & ICE1712_EWX2496_SERIAL_CLOCK ? 1 : 0;
}