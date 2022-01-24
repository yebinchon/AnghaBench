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
struct snd_es1688 {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_AVAIL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct snd_es1688*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  RESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_es1688*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct snd_es1688 *chip)
{
	int i;

	FUNC2(3, FUNC0(chip, RESET));		/* valid only for ESS chips, SB -> 1 */
	FUNC5(10);
	FUNC2(0, FUNC0(chip, RESET));
	FUNC5(30);
	for (i = 0; i < 1000 && !(FUNC1(FUNC0(chip, DATA_AVAIL)) & 0x80); i++);
	if (FUNC1(FUNC0(chip, READ)) != 0xaa) {
		FUNC4("ess_reset at 0x%lx: failed!!!\n", chip->port);
		return -ENODEV;
	}
	FUNC3(chip, 0xc6);	/* enable extended mode */
	return 0;
}