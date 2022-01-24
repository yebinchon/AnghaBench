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
struct azx_dev {int dummy; } ;
struct azx {int num_streams; struct azx_dev* azx_dev; } ;

/* Variables and functions */
 int ICH6_INT_ALL_STREAM ; 
 int ICH6_INT_CTRL_EN ; 
 int /*<<< orphan*/  INTSTS ; 
 int /*<<< orphan*/  RIRBSTS ; 
 int /*<<< orphan*/  RIRB_INT_MASK ; 
 int /*<<< orphan*/  SD_INT_MASK ; 
 int /*<<< orphan*/  SD_STS ; 
 int /*<<< orphan*/  STATESTS ; 
 int /*<<< orphan*/  STATESTS_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct azx_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct azx *chip)
{
	int i;

	/* clear stream status */
	for (i = 0; i < chip->num_streams; i++) {
		struct azx_dev *azx_dev = &chip->azx_dev[i];
		FUNC0(azx_dev, SD_STS, SD_INT_MASK);
	}

	/* clear STATESTS */
	FUNC1(chip, STATESTS, STATESTS_INT_MASK);

	/* clear rirb status */
	FUNC1(chip, RIRBSTS, RIRB_INT_MASK);

	/* clear int status */
	FUNC2(chip, INTSTS, ICH6_INT_CTRL_EN | ICH6_INT_ALL_STREAM);
}