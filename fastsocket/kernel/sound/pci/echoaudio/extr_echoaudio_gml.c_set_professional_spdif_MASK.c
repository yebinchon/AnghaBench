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
typedef  int u32 ;
struct echoaudio {int sample_rate; char professional_spdif; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int GML_SPDIF_24_BIT ; 
 int GML_SPDIF_COPY_PERMIT ; 
 int GML_SPDIF_FORMAT_CLEAR_MASK ; 
 int GML_SPDIF_PRO_MODE ; 
 int GML_SPDIF_SAMPLE_RATE0 ; 
 int GML_SPDIF_SAMPLE_RATE1 ; 
 int GML_SPDIF_TWO_CHANNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct echoaudio*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct echoaudio *chip, char prof)
{
	u32 control_reg;
	int err;

	/* Clear the current S/PDIF flags */
	control_reg = FUNC1(chip->comm_page->control_register);
	control_reg &= GML_SPDIF_FORMAT_CLEAR_MASK;

	/* Set the new S/PDIF flags depending on the mode */
	control_reg |= GML_SPDIF_TWO_CHANNEL | GML_SPDIF_24_BIT |
		GML_SPDIF_COPY_PERMIT;
	if (prof) {
		/* Professional mode */
		control_reg |= GML_SPDIF_PRO_MODE;

		switch (chip->sample_rate) {
		case 32000:
			control_reg |= GML_SPDIF_SAMPLE_RATE0 |
				GML_SPDIF_SAMPLE_RATE1;
			break;
		case 44100:
			control_reg |= GML_SPDIF_SAMPLE_RATE0;
			break;
		case 48000:
			control_reg |= GML_SPDIF_SAMPLE_RATE1;
			break;
		}
	} else {
		/* Consumer mode */
		switch (chip->sample_rate) {
		case 32000:
			control_reg |= GML_SPDIF_SAMPLE_RATE0 |
				GML_SPDIF_SAMPLE_RATE1;
			break;
		case 48000:
			control_reg |= GML_SPDIF_SAMPLE_RATE1;
			break;
		}
	}

	if ((err = FUNC2(chip, control_reg, FALSE)))
		return err;
	chip->professional_spdif = prof;
	FUNC0(("set_professional_spdif to %s\n",
		prof ? "Professional" : "Consumer"));
	return 0;
}