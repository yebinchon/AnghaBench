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
struct sfire_chip {scalar_t__ card; scalar_t__ control; scalar_t__ comm; scalar_t__ midi; scalar_t__ pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sfire_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfire_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfire_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfire_chip*) ; 

__attribute__((used)) static void FUNC5(struct sfire_chip *chip)
{
	if (chip) {
		if (chip->pcm)
			FUNC4(chip);
		if (chip->midi)
			FUNC3(chip);
		if (chip->comm)
			FUNC1(chip);
		if (chip->control)
			FUNC2(chip);
		if (chip->card)
			FUNC0(chip->card);
	}
}