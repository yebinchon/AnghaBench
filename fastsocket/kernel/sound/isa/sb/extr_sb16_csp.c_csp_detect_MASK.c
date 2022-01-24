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
struct snd_sb {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct snd_sb*) ; 
 unsigned char FUNC1 (struct snd_sb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sb*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_sb *chip, int *version)
{
	unsigned char csp_test1, csp_test2;
	unsigned long flags;
	int result = -ENODEV;

	FUNC6(&chip->reg_lock, flags);

	FUNC2(chip, 0x00, 0x00);
	FUNC3(chip, 0xfc);		/* 0xfc = ?? */

	csp_test1 = FUNC1(chip, 0x83);
	FUNC4(chip, 0x83, ~csp_test1);
	csp_test2 = FUNC1(chip, 0x83);
	if (csp_test2 != (csp_test1 ^ 0xff))
		goto __fail;

	FUNC4(chip, 0x83, csp_test1);
	csp_test2 = FUNC1(chip, 0x83);
	if (csp_test2 != csp_test1)
		goto __fail;

	FUNC3(chip, 0x00);		/* 0x00 = ? */

	*version = FUNC0(chip);
	FUNC5(chip);	/* reset DSP after getversion! */
	if (*version >= 0x10 && *version <= 0x1f)
		result = 0;		/* valid version id */

      __fail:
	FUNC7(&chip->reg_lock, flags);
	return result;
}