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
struct snd_ice1712 {struct aureon_spec* spec; } ;
struct aureon_spec {unsigned short* stac9744; } ;

/* Variables and functions */
 unsigned int AUREON_AC97_ADDR ; 
 unsigned int AUREON_AC97_COMMIT ; 
 unsigned int AUREON_AC97_DATA_HIGH ; 
 unsigned int AUREON_AC97_DATA_LOW ; 
 unsigned int AUREON_AC97_DATA_MASK ; 
 int FUNC0 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ice1712 *ice, unsigned short reg,
			      unsigned short val)
{
	struct aureon_spec *spec = ice->spec;
	unsigned int tmp;

	/* Send address to XILINX chip */
	tmp = (FUNC0(ice) & ~0xFF) | (reg & 0x7F);
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp |= AUREON_AC97_ADDR;
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp &= ~AUREON_AC97_ADDR;
	FUNC1(ice, tmp);
	FUNC2(10);

	/* Send low-order byte to XILINX chip */
	tmp &= ~AUREON_AC97_DATA_MASK;
	tmp |= val & AUREON_AC97_DATA_MASK;
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp |= AUREON_AC97_DATA_LOW;
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp &= ~AUREON_AC97_DATA_LOW;
	FUNC1(ice, tmp);
	FUNC2(10);

	/* Send high-order byte to XILINX chip */
	tmp &= ~AUREON_AC97_DATA_MASK;
	tmp |= (val >> 8) & AUREON_AC97_DATA_MASK;

	FUNC1(ice, tmp);
	FUNC2(10);
	tmp |= AUREON_AC97_DATA_HIGH;
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp &= ~AUREON_AC97_DATA_HIGH;
	FUNC1(ice, tmp);
	FUNC2(10);

	/* Instruct XILINX chip to parse the data to the STAC9744 chip */
	tmp |= AUREON_AC97_COMMIT;
	FUNC1(ice, tmp);
	FUNC2(10);
	tmp &= ~AUREON_AC97_COMMIT;
	FUNC1(ice, tmp);
	FUNC2(10);

	/* Store the data in out private buffer */
	spec->stac9744[(reg & 0x7F) >> 1] = val;
}