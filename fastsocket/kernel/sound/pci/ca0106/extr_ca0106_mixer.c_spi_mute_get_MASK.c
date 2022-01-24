#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {unsigned int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {unsigned int* spi_dac_reg; } ;

/* Variables and functions */
 unsigned int SPI_REG_MASK ; 
 unsigned int SPI_REG_SHIFT ; 
 struct snd_ca0106* FUNC0 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kcontrol,
			struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ca0106 *emu = FUNC0(kcontrol);
	unsigned int reg = kcontrol->private_value >> SPI_REG_SHIFT;
	unsigned int bit = kcontrol->private_value & SPI_REG_MASK;

	ucontrol->value.integer.value[0] = !(emu->spi_dac_reg[reg] & bit);
	return 0;
}