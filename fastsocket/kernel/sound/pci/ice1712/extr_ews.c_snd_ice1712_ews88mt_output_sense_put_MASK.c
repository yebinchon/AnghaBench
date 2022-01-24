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
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ews_spec {int /*<<< orphan*/ * i2cdevs; } ;

/* Variables and functions */
 int EIO ; 
 size_t EWS_I2C_PCF2 ; 
 unsigned char ICE1712_EWS88MT_OUTPUT_SENSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC4(kcontrol);
	struct ews_spec *spec = ice->spec;
	unsigned char data, ndata;

	FUNC0(ice->i2c);
	if (FUNC1(spec->i2cdevs[EWS_I2C_PCF2], &data, 1) != 1) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	ndata = (data & ~ICE1712_EWS88MT_OUTPUT_SENSE) | (ucontrol->value.enumerated.item[0] ? ICE1712_EWS88MT_OUTPUT_SENSE : 0);
	if (ndata != data && FUNC2(spec->i2cdevs[EWS_I2C_PCF2],
					       &ndata, 1) != 1) {
		FUNC3(ice->i2c);
		return -EIO;
	}
	FUNC3(ice->i2c);
	return ndata != data;
}