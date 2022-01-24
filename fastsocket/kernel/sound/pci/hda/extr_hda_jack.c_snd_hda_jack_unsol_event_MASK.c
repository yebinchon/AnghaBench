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
struct hda_jack_tbl {int jack_dirty; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 unsigned int AC_UNSOL_RES_TAG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct hda_jack_tbl*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 struct hda_jack_tbl* FUNC2 (struct hda_codec*,int) ; 

void FUNC3(struct hda_codec *codec, unsigned int res)
{
	struct hda_jack_tbl *event;
	int tag = (res >> AC_UNSOL_RES_TAG_SHIFT) & 0x7f;

	event = FUNC2(codec, tag);
	if (!event)
		return;
	event->jack_dirty = 1;

	FUNC0(codec, event);
	FUNC1(codec);
}