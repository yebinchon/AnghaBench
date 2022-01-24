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
struct oxygen {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (struct oxygen*) ; 
 int /*<<< orphan*/  hdav_hdmi_control ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct oxygen*) ; 

__attribute__((used)) static int FUNC3(struct oxygen *chip)
{
	int err;

	err = FUNC1(chip->card, FUNC2(&hdav_hdmi_control, chip));
	if (err < 0)
		return err;
	err = FUNC0(chip);
	if (err < 0)
		return err;
	return 0;
}