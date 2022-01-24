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
struct usb_line6 {int /*<<< orphan*/  ifcdev; TYPE_1__* properties; struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * line6_id ; 
 int /*<<< orphan*/ * line6_index ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct usb_line6 *line6)
{
	static int dev;
	struct snd_card *card;
	int err;

	err = FUNC1(line6_index[dev], line6_id[dev], THIS_MODULE, 0,
			      &card);
	if (err < 0)
		return err;

	line6->card = card;

	FUNC3(card->driver, DRIVER_NAME);
	FUNC3(card->shortname, "Line6-USB");
	FUNC2(card->longname, "Line6 %s at USB %s", line6->properties->name,
		FUNC0(line6->ifcdev));  /* 80 chars - see asound.h */
	return 0;
}