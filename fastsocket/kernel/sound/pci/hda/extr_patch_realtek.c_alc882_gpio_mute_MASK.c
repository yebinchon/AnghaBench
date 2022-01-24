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
struct hda_codec {int /*<<< orphan*/  afg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_GPIO_DATA ; 
 int /*<<< orphan*/  AC_VERB_GET_GPIO_DIRECTION ; 
 int /*<<< orphan*/  AC_VERB_GET_GPIO_MASK ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DIRECTION ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, int pin, int muted)
{
	unsigned int gpiostate, gpiomask, gpiodir;

	gpiostate = FUNC1(codec, codec->afg, 0,
				       AC_VERB_GET_GPIO_DATA, 0);

	if (!muted)
		gpiostate |= (1 << pin);
	else
		gpiostate &= ~(1 << pin);

	gpiomask = FUNC1(codec, codec->afg, 0,
				      AC_VERB_GET_GPIO_MASK, 0);
	gpiomask |= (1 << pin);

	gpiodir = FUNC1(codec, codec->afg, 0,
				     AC_VERB_GET_GPIO_DIRECTION, 0);
	gpiodir |= (1 << pin);


	FUNC2(codec, codec->afg, 0,
			    AC_VERB_SET_GPIO_MASK, gpiomask);
	FUNC2(codec, codec->afg, 0,
			    AC_VERB_SET_GPIO_DIRECTION, gpiodir);

	FUNC0(1);

	FUNC2(codec, codec->afg, 0,
			    AC_VERB_SET_GPIO_DATA, gpiostate);
}