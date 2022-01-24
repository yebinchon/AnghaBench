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
struct oxygen {int dummy; } ;

/* Variables and functions */
 int CS4362A_CPEN ; 
 int CS4362A_PDN ; 
 int /*<<< orphan*/  OXYGEN_FUNCTION ; 
 int /*<<< orphan*/  OXYGEN_FUNCTION_RESET_CODEC ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip)
{
	FUNC2(chip);
	FUNC0(chip, 0x01, CS4362A_PDN | CS4362A_CPEN);
	FUNC1(chip, OXYGEN_FUNCTION, OXYGEN_FUNCTION_RESET_CODEC);
}