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
struct TYPE_2__ {int /*<<< orphan*/  reg_dram; int /*<<< orphan*/  reg_data8; int /*<<< orphan*/  reg_regsel; int /*<<< orphan*/  reg_data16; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; TYPE_1__ gf1; } ;

/* Variables and functions */
 unsigned char SNDRV_GF1_GB_DRAM_IO_HIGH ; 
 unsigned char SNDRV_GF1_GW_DRAM_IO_LOW ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned char FUNC6(struct snd_gus_card * gus, unsigned int addr)
{
	unsigned long flags;
	unsigned char res;

	FUNC4(&gus->reg_lock, flags);
	FUNC2(SNDRV_GF1_GW_DRAM_IO_LOW, gus->gf1.reg_regsel);
	FUNC1();
	FUNC3((unsigned short) addr, gus->gf1.reg_data16);
	FUNC1();
	FUNC2(SNDRV_GF1_GB_DRAM_IO_HIGH, gus->gf1.reg_regsel);
	FUNC1();
	FUNC2((unsigned char) (addr >> 16), gus->gf1.reg_data8);
	FUNC1();
	res = FUNC0(gus->gf1.reg_dram);
	FUNC5(&gus->reg_lock, flags);
	return res;
}