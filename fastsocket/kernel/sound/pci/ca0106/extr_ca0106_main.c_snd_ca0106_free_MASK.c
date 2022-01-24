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
struct TYPE_2__ {scalar_t__ area; } ;
struct snd_ca0106 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/ * res_port; TYPE_1__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ca0106*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_ca0106*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ca0106*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct snd_ca0106 *chip)
{
	if (chip->res_port != NULL) {
		/* avoid access to already used hardware */
		FUNC0(chip);
	}
	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);
	// release the data
#if 1
	if (chip->buffer.area)
		FUNC5(&chip->buffer);
#endif

	// release the i/o port
	FUNC4(chip->res_port);

	FUNC3(chip->pci);
	FUNC2(chip);
	return 0;
}