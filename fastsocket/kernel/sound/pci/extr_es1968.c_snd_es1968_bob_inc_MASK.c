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
struct es1968 {int bobclient; int bob_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es1968*) ; 
 int /*<<< orphan*/  FUNC1 (struct es1968*) ; 

__attribute__((used)) static void FUNC2(struct es1968 *chip, int freq)
{
	chip->bobclient++;
	if (chip->bobclient == 1) {
		chip->bob_freq = freq;
		FUNC0(chip);
	} else if (chip->bob_freq < freq) {
		FUNC1(chip);
		chip->bob_freq = freq;
		FUNC0(chip);
	}
}