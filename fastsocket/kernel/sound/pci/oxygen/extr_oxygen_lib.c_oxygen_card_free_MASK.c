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
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  mutex; int /*<<< orphan*/  model_data; TYPE_1__ model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct oxygen*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct oxygen*) ; 

__attribute__((used)) static void FUNC8(struct snd_card *card)
{
	struct oxygen *chip = card->private_data;

	FUNC4(chip);
	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);
	FUNC0();
	chip->model.cleanup(chip);
	FUNC2(chip->model_data);
	FUNC3(&chip->mutex);
	FUNC6(chip->pci);
	FUNC5(chip->pci);
}