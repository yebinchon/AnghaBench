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
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int /*<<< orphan*/  i2c; struct ews_spec* spec; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ews_spec {int /*<<< orphan*/ * i2cdevs; } ;

/* Variables and functions */
 int EIO ; 
 size_t EWS_I2C_PCF2 ; 
 unsigned char ICE1712_EWS88MT_OUTPUT_SENSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC3(kcontrol);
	struct ews_spec *spec = ice->spec;
	unsigned char data;

	FUNC0(ice->i2c);
	if (FUNC1(spec->i2cdevs[EWS_I2C_PCF2], &data, 1) != 1) {
		FUNC2(ice->i2c);
		return -EIO;
	}
	FUNC2(ice->i2c);
	ucontrol->value.enumerated.item[0] = data & ICE1712_EWS88MT_OUTPUT_SENSE ? 1 : 0; /* high = -10dBV, low = +4dBu */
	return 0;
}