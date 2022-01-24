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
struct input_device_id {int flags; int /*<<< orphan*/  swbit; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  sndbit; int /*<<< orphan*/  ledbit; int /*<<< orphan*/  mscbit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_ABS_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_EV_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_FF_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_KEY_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_KEY_MIN_INTERESTING ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_LED_MAX ; 
 int INPUT_DEVICE_ID_MATCH_ABSBIT ; 
 int INPUT_DEVICE_ID_MATCH_BUS ; 
 int INPUT_DEVICE_ID_MATCH_EVBIT ; 
 int INPUT_DEVICE_ID_MATCH_FFBIT ; 
 int INPUT_DEVICE_ID_MATCH_KEYBIT ; 
 int INPUT_DEVICE_ID_MATCH_LEDBIT ; 
 int INPUT_DEVICE_ID_MATCH_MSCIT ; 
 int INPUT_DEVICE_ID_MATCH_PRODUCT ; 
 int INPUT_DEVICE_ID_MATCH_RELBIT ; 
 int INPUT_DEVICE_ID_MATCH_SNDBIT ; 
 int INPUT_DEVICE_ID_MATCH_SWBIT ; 
 int INPUT_DEVICE_ID_MATCH_VENDOR ; 
 int INPUT_DEVICE_ID_MATCH_VERSION ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_MSC_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_REL_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_SND_MAX ; 
 int /*<<< orphan*/  INPUT_DEVICE_ID_SW_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *filename, struct input_device_id *id,
			  char *alias)
{
	FUNC2(alias, "input:");

	FUNC0(alias, "b", id->flags & INPUT_DEVICE_ID_MATCH_BUS, id->bustype);
	FUNC0(alias, "v", id->flags & INPUT_DEVICE_ID_MATCH_VENDOR, id->vendor);
	FUNC0(alias, "p", id->flags & INPUT_DEVICE_ID_MATCH_PRODUCT, id->product);
	FUNC0(alias, "e", id->flags & INPUT_DEVICE_ID_MATCH_VERSION, id->version);

	FUNC2(alias + FUNC3(alias), "-e*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_EVBIT)
		FUNC1(alias, id->evbit, 0, INPUT_DEVICE_ID_EV_MAX);
	FUNC2(alias + FUNC3(alias), "k*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_KEYBIT)
		FUNC1(alias, id->keybit,
			 INPUT_DEVICE_ID_KEY_MIN_INTERESTING,
			 INPUT_DEVICE_ID_KEY_MAX);
	FUNC2(alias + FUNC3(alias), "r*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_RELBIT)
		FUNC1(alias, id->relbit, 0, INPUT_DEVICE_ID_REL_MAX);
	FUNC2(alias + FUNC3(alias), "a*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_ABSBIT)
		FUNC1(alias, id->absbit, 0, INPUT_DEVICE_ID_ABS_MAX);
	FUNC2(alias + FUNC3(alias), "m*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_MSCIT)
		FUNC1(alias, id->mscbit, 0, INPUT_DEVICE_ID_MSC_MAX);
	FUNC2(alias + FUNC3(alias), "l*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_LEDBIT)
		FUNC1(alias, id->ledbit, 0, INPUT_DEVICE_ID_LED_MAX);
	FUNC2(alias + FUNC3(alias), "s*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_SNDBIT)
		FUNC1(alias, id->sndbit, 0, INPUT_DEVICE_ID_SND_MAX);
	FUNC2(alias + FUNC3(alias), "f*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_FFBIT)
		FUNC1(alias, id->ffbit, 0, INPUT_DEVICE_ID_FF_MAX);
	FUNC2(alias + FUNC3(alias), "w*");
	if (id->flags & INPUT_DEVICE_ID_MATCH_SWBIT)
		FUNC1(alias, id->swbit, 0, INPUT_DEVICE_ID_SW_MAX);
	return 1;
}