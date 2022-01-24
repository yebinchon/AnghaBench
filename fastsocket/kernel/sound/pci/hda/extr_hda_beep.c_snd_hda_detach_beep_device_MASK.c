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
struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {scalar_t__ dev; int /*<<< orphan*/  unregister_work; int /*<<< orphan*/  register_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_beep*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_beep*) ; 

void FUNC4(struct hda_codec *codec)
{
	struct hda_beep *beep = codec->beep;
	if (beep) {
		FUNC1(&beep->register_work);
		FUNC0(&beep->unregister_work);
		if (beep->dev)
			FUNC3(beep);
		codec->beep = NULL;
		FUNC2(beep);
	}
}