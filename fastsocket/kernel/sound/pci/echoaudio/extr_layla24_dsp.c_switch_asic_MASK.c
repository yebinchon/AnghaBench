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
struct firmware {int dummy; } ;
struct echoaudio {TYPE_1__* comm_page; struct firmware const* asic_code; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_2__ {int /*<<< orphan*/  monitors; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC ; 
 int /*<<< orphan*/  ECHOGAIN_MUTED ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MONITOR_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct echoaudio*,int /*<<< orphan*/ ,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct echoaudio *chip, const struct firmware *asic)
{
	s8 *monitors;

	/*  Check to see if this is already loaded */
	if (asic != chip->asic_code) {
		monitors = FUNC1(chip->comm_page->monitors,
					MONITOR_ARRAY_SIZE, GFP_KERNEL);
		if (! monitors)
			return -ENOMEM;

		FUNC4(chip->comm_page->monitors, ECHOGAIN_MUTED,
		       MONITOR_ARRAY_SIZE);

		/* Load the desired ASIC */
		if (FUNC2(chip, DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC,
				      asic) < 0) {
			FUNC3(chip->comm_page->monitors, monitors,
			       MONITOR_ARRAY_SIZE);
			FUNC0(monitors);
			return -EIO;
		}
		chip->asic_code = asic;
		FUNC3(chip->comm_page->monitors, monitors, MONITOR_ARRAY_SIZE);
		FUNC0(monitors);
	}

	return 0;
}