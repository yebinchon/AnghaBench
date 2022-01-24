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
struct snd_maya44 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ice; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int GPIO_MIC_RELAY ; 
 int /*<<< orphan*/  MAYA_LINE_IN ; 
 int /*<<< orphan*/  MAYA_MIC_IN ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_maya44* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_maya44*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_value *ucontrol)
{
	struct snd_maya44 *chip = FUNC3(kcontrol);
	int sel = ucontrol->value.enumerated.item[0];
	int changed;

	FUNC1(&chip->mutex);
	changed = FUNC0(chip->ice, 1 << GPIO_MIC_RELAY,
				     sel ? (1 << GPIO_MIC_RELAY) : 0);
	FUNC4(chip, 0, sel ? MAYA_MIC_IN : MAYA_LINE_IN);
	FUNC2(&chip->mutex);
	return changed;
}