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
struct snd_card {struct portman* private_data; } ;
struct portman {scalar_t__ pardev_claimed; struct pardevice* pardev; } ;
struct pardevice {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct portman*) ; 

__attribute__((used)) static void FUNC3(struct snd_card *card)
{
	struct portman *pm = card->private_data;
	struct pardevice *pardev = pm->pardev;

	if (pardev) {
		if (pm->pardev_claimed)
			FUNC0(pardev);
		FUNC1(pardev);
	}

	FUNC2(pm);
}