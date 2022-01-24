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
struct hda_jack_tbl {int private_data; } ;
struct hda_codec {int /*<<< orphan*/  afg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_GPIO_DATA ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec, struct hda_jack_tbl *event)
{
	unsigned int data;

	data = FUNC0(codec, codec->afg, 0,
				  AC_VERB_GET_GPIO_DATA, 0);
	/* toggle VREF state based on GPIOx status */
	FUNC1(codec, codec->afg, 0, 0x7e0,
			    !!(data & (1 << event->private_data)));
}