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
struct snd_soc_dai {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*) ; 

int FUNC2(struct snd_soc_dai *dai, size_t count)
{
	int i, ret;

	for (i = 0; i < count; i++) {
		ret = FUNC0(&dai[i]);
		if (ret != 0)
			goto err;
	}

	return 0;

err:
	for (i--; i >= 0; i--)
		FUNC1(&dai[i]);

	return ret;
}