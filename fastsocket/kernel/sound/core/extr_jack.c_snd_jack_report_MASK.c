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
struct snd_jack {int type; int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * jack_types ; 

void FUNC3(struct snd_jack *jack, int status)
{
	int i;

	if (!jack)
		return;

	for (i = 0; i < FUNC0(jack_types); i++) {
		int testbit = 1 << i;
		if (jack->type & testbit)
			FUNC1(jack->input_dev, jack_types[i],
					    status & testbit);
	}

	FUNC2(jack->input_dev);
}