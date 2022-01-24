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
 int PONTIS_CS_CLK ; 
 int PONTIS_CS_CS ; 
 int PONTIS_CS_WDATA ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,int) ; 
 unsigned int FUNC3 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned int FUNC6(struct snd_ice1712 *ice, unsigned int dev, unsigned int reg)
{
	unsigned int val;
	FUNC1(ice, PONTIS_CS_CS|PONTIS_CS_WDATA|PONTIS_CS_CLK);
	FUNC2(ice, ~(PONTIS_CS_CS|PONTIS_CS_WDATA|PONTIS_CS_CLK));
	FUNC0(ice, PONTIS_CS_CS, 0);
	FUNC4(ice, dev & ~1); /* WRITE */
	FUNC4(ice, reg); /* MAP */
	/* trigger */
	FUNC0(ice, PONTIS_CS_CS, 1);
	FUNC5(1);
	FUNC0(ice, PONTIS_CS_CS, 0);
	FUNC4(ice, dev | 1); /* READ */
	val = FUNC3(ice);
	/* trigger */
	FUNC0(ice, PONTIS_CS_CS, 1);
	FUNC5(1);
	/* restore */
	FUNC2(ice, ice->gpio.write_mask);
	FUNC1(ice, ice->gpio.direction);
	return val;
}