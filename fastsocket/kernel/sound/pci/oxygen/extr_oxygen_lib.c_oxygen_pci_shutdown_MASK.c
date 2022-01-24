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
struct snd_card {struct oxygen* private_data; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct oxygen*) ;} ;
struct oxygen {TYPE_1__ model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oxygen*) ; 
 struct snd_card* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 

void FUNC3(struct pci_dev *pci)
{
	struct snd_card *card = FUNC1(pci);
	struct oxygen *chip = card->private_data;

	FUNC0(chip);
	chip->model.cleanup(chip);
}