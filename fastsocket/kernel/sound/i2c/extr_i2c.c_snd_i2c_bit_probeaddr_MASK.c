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
struct snd_i2c_bus {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct snd_i2c_bus*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_i2c_bus*) ; 

__attribute__((used)) static int FUNC3(struct snd_i2c_bus *bus, unsigned short addr)
{
	int err;

	if (addr & 0x8000)	/* 10-bit address */
		return -EIO;	/* not yet implemented */
	if (addr & 0x7f80)	/* invalid address */
		return -EINVAL;
	FUNC1(bus);
	err = FUNC0(bus, addr << 1);
	FUNC2(bus);
	return err;
}