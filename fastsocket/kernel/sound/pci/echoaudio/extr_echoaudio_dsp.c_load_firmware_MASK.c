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
typedef  int /*<<< orphan*/  u16 ;
struct firmware {scalar_t__ data; } ;
struct echoaudio {int /*<<< orphan*/  dsp_code_to_load; int /*<<< orphan*/ * dsp_code; int /*<<< orphan*/  comm_page; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct echoaudio*) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,int /*<<< orphan*/ ,struct echoaudio*) ; 
 int FUNC3 (struct echoaudio*) ; 
 int FUNC4 (struct echoaudio*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct echoaudio*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct echoaudio *chip)
{
	const struct firmware *fw;
	int box_type, err;

	if (FUNC6(!chip->dsp_code_to_load || !chip->comm_page))
		return -EPERM;

	/* See if the ASIC is present and working - only if the DSP is already loaded */
	if (chip->dsp_code) {
		if ((box_type = FUNC0(chip)) >= 0)
			return box_type;
		/* ASIC check failed; force the DSP to reload */
		chip->dsp_code = NULL;
	}

	if ((err = FUNC2(&fw, chip->dsp_code_to_load, chip)) < 0)
		return err;
	err = FUNC4(chip, (u16 *)fw->data);
	FUNC1(fw);
	if (err < 0)
		return err;

	if ((box_type = FUNC3(chip)) < 0)
		return box_type;	/* error */

	if ((err = FUNC5(chip)) < 0)
		return err;

	return box_type;
}