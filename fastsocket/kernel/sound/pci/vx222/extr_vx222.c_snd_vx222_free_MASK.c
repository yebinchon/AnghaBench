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
struct vx_core {scalar_t__ irq; } ;
struct snd_vx222 {int /*<<< orphan*/  pci; scalar_t__* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vx_core *chip)
{
	struct snd_vx222 *vx = (struct snd_vx222 *)chip;

	if (chip->irq >= 0)
		FUNC0(chip->irq, (void*)chip);
	if (vx->port[0])
		FUNC3(vx->pci);
	FUNC2(vx->pci);
	FUNC1(chip);
	return 0;
}