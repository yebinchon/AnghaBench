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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {scalar_t__ io_type; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ H9632 ; 
 int /*<<< orphan*/  FUNC0 (struct hdsp*,unsigned int) ; 
 unsigned int FUNC1 (struct hdsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp*) ; 
 struct hdsp* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct hdsp *hdsp = FUNC3(kcontrol);
	int change;
	unsigned int val;

	if (!FUNC2(hdsp))
		return -EBUSY;
	val = ucontrol->value.enumerated.item[0] % ((hdsp->io_type == H9632) ? 4 : 3);
	FUNC4(&hdsp->lock);
	change = val != FUNC1(hdsp);
	if (change)
		FUNC0(hdsp, val);
	FUNC5(&hdsp->lock);
	return change;
}