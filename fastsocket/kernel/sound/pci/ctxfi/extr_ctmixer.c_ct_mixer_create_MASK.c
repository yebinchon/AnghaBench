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
struct ct_mixer {int /*<<< orphan*/  resume; int /*<<< orphan*/  set_input_right; int /*<<< orphan*/  set_input_left; int /*<<< orphan*/  get_output_ports; struct ct_atc* atc; scalar_t__ switch_state; } ;
struct ct_atc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ct_mixer*) ; 
 int FUNC1 (struct ct_mixer**) ; 
 int FUNC2 (struct ct_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (struct ct_mixer*) ; 
 int /*<<< orphan*/  mixer_get_output_ports ; 
 int /*<<< orphan*/  mixer_resume ; 
 int /*<<< orphan*/  mixer_set_input_left ; 
 int /*<<< orphan*/  mixer_set_input_right ; 

int FUNC4(struct ct_atc *atc, struct ct_mixer **rmixer)
{
	struct ct_mixer *mixer;
	int err;

	*rmixer = NULL;

	/* Allocate mem for mixer obj */
	err = FUNC1(&mixer);
	if (err)
		return err;

	mixer->switch_state = 0;
	mixer->atc = atc;
	/* Set operations */
	mixer->get_output_ports = mixer_get_output_ports;
	mixer->set_input_left = mixer_set_input_left;
	mixer->set_input_right = mixer_set_input_right;
#ifdef CONFIG_PM
	mixer->resume = mixer_resume;
#endif

	/* Allocate chip resources for mixer obj */
	err = FUNC2(mixer);
	if (err)
		goto error;

	/* Build internal mixer topology */
	FUNC3(mixer);

	*rmixer = mixer;

	return 0;

error:
	FUNC0(mixer);
	return err;
}