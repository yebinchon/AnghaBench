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
 int EIO ; 
 int FUNC0 (struct snd_i2c_bus*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_i2c_bus*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_i2c_bus*,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_i2c_bus *bus)
{
	int ack;

	FUNC2(bus, 0, 1);
	FUNC2(bus, 1, 1);
	FUNC1(bus, 1, 0);	/* SCL - wr, SDA - rd */
	ack = FUNC0(bus, 1);
	FUNC1(bus, 1, 1);	/* SCL - wr, SDA - wr */
	FUNC2(bus, 0, 1);
	return ack ? -EIO : 0;
}