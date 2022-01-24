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
struct snd_sf_list {int presets_locked; int /*<<< orphan*/  lock; int /*<<< orphan*/  presets_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct snd_sf_list *sflist)
{
	unsigned long flags;
	FUNC0(&sflist->presets_mutex);
	FUNC1(&sflist->lock, flags);
	sflist->presets_locked = 1;
	FUNC2(&sflist->lock, flags);
}