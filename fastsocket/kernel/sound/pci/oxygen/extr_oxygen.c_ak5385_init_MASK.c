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
struct oxygen {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_AK5385_DFS_MASK ; 
 int /*<<< orphan*/  OXYGEN_GPIO_CONTROL ; 
 int /*<<< orphan*/  OXYGEN_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip)
{
	FUNC1(chip, OXYGEN_GPIO_CONTROL, GPIO_AK5385_DFS_MASK);
	FUNC0(chip, OXYGEN_GPIO_DATA, GPIO_AK5385_DFS_MASK);
	FUNC2(chip->card, "AK5385");
}