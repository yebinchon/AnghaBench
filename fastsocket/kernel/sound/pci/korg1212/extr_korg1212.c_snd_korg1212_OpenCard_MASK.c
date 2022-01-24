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
struct snd_korg1212 {size_t cardState; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  opencnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  K1212_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_korg1212*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_korg1212*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stateName ; 

__attribute__((used)) static int FUNC5(struct snd_korg1212 * korg1212)
{
	FUNC0("K1212_DEBUG: OpenCard [%s] %d\n",
			   stateName[korg1212->cardState], korg1212->opencnt);
	FUNC1(&korg1212->open_mutex);
        if (korg1212->opencnt++ == 0) {
		FUNC3(korg1212);
		FUNC4(korg1212, K1212_STATE_OPEN);
	}

	FUNC2(&korg1212->open_mutex);
        return 1;
}