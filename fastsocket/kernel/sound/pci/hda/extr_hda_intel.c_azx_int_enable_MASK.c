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
struct azx {int dummy; } ;

/* Variables and functions */
 int ICH6_INT_CTRL_EN ; 
 int ICH6_INT_GLOBAL_EN ; 
 int /*<<< orphan*/  INTCTL ; 
 int FUNC0 (struct azx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct azx *chip)
{
	/* enable controller CIE and GIE */
	FUNC1(chip, INTCTL, FUNC0(chip, INTCTL) |
		   ICH6_INT_CTRL_EN | ICH6_INT_GLOBAL_EN);
}