#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_card {int dummy; } ;
struct TYPE_7__ {TYPE_2__* dev; int /*<<< orphan*/  pcm_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_ID_US122 ; 
 scalar_t__ USB_ID_US428 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct snd_card*) ; 
 int FUNC3 (struct snd_card*,int,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 

int FUNC5(struct snd_card *card)
{
	int err = 0;
	
	FUNC0(&FUNC2(card)->pcm_list);

	if (0 > (err = FUNC3(card, 0xA, 0x8)))
		return err;
	if (FUNC1(FUNC2(card)->dev->descriptor.idProduct) == USB_ID_US428)
	     if (0 > (err = FUNC3(card, 0, 0xA)))
		     return err;
	if (FUNC1(FUNC2(card)->dev->descriptor.idProduct) != USB_ID_US122)
		err = FUNC4(FUNC2(card), 44100);	// Lets us428 recognize output-volume settings, disturbs us122.
	return err;
}