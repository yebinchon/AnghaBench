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
struct usb_line6 {struct snd_card* card; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 

void FUNC2(struct usb_line6 *line6)
{
	struct snd_card *card = line6->card;

	if (card == NULL)
		return;

	FUNC0(card);
	FUNC1(card);
	line6->card = NULL;
}