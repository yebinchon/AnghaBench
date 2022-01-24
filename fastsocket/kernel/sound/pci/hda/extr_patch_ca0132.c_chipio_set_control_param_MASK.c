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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int /*<<< orphan*/  chipio_mutex; } ;
typedef  enum control_param_id { ____Placeholder_control_param_id } control_param_id ;

/* Variables and functions */
 int /*<<< orphan*/  VENDOR_CHIPIO_PARAM_EX_ID_SET ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_PARAM_EX_VALUE_SET ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_PARAM_SET ; 
 int /*<<< orphan*/  VENDOR_CHIPIO_STATUS ; 
 int /*<<< orphan*/  WIDGET_CHIP_CTRL ; 
 scalar_t__ FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
		enum control_param_id param_id, int param_val)
{
	struct ca0132_spec *spec = codec->spec;
	int val;

	if ((param_id < 32) && (param_val < 8)) {
		val = (param_val << 5) | (param_id);
		FUNC3(codec, WIDGET_CHIP_CTRL, 0,
				    VENDOR_CHIPIO_PARAM_SET, val);
	} else {
		FUNC1(&spec->chipio_mutex);
		if (FUNC0(codec, VENDOR_CHIPIO_STATUS, 0) == 0) {
			FUNC3(codec, WIDGET_CHIP_CTRL, 0,
					    VENDOR_CHIPIO_PARAM_EX_ID_SET,
					    param_id);
			FUNC3(codec, WIDGET_CHIP_CTRL, 0,
					    VENDOR_CHIPIO_PARAM_EX_VALUE_SET,
					    param_val);
		}
		FUNC2(&spec->chipio_mutex);
	}
}