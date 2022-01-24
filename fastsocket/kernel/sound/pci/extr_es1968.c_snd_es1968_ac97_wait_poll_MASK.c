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
struct es1968 {scalar_t__ io_port; } ;

/* Variables and functions */
 scalar_t__ ESM_AC97_INDEX ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct es1968 *chip)
{
	int timeout = 100000;

	while (timeout-- > 0) {
		if (!(FUNC0(chip->io_port + ESM_AC97_INDEX) & 1))
			return 0;
	}
	FUNC1("es1968: ac97 timeout\n");
	return 1; /* timeout */
}