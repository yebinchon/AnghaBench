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
struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {scalar_t__ gpio_data; scalar_t__ gpio_dir; scalar_t__ gpio_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DIRECTION ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_MASK ; 
 int /*<<< orphan*/  cs_coef_init_verbs ; 
 int /*<<< orphan*/  cs_errata_init_verbs ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct cs_spec *spec = codec->spec;

	/* init_verb sequence for C0/C1/C2 errata*/
	FUNC4(codec, cs_errata_init_verbs);

	FUNC4(codec, cs_coef_init_verbs);

	FUNC3(codec);

	if (spec->gpio_mask) {
		FUNC2(codec, 0x01, 0, AC_VERB_SET_GPIO_MASK,
				    spec->gpio_mask);
		FUNC2(codec, 0x01, 0, AC_VERB_SET_GPIO_DIRECTION,
				    spec->gpio_dir);
		FUNC2(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
				    spec->gpio_data);
	}

	FUNC1(codec);
	FUNC0(codec);

	return 0;
}