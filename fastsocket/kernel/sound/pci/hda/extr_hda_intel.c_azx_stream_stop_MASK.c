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
struct azx_dev {int index; } ;
struct azx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTCTL ; 
 int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct azx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct azx *chip, struct azx_dev *azx_dev)
{
	FUNC1(chip, azx_dev);
	/* disable SIE */
	FUNC2(chip, INTCTL,
		   FUNC0(chip, INTCTL) & ~(1 << azx_dev->index));
}