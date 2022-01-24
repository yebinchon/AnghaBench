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
struct snd_util_memhdr {int dummy; } ;
struct snd_sf_callback {int dummy; } ;
struct snd_sf_list {struct snd_sf_callback callback; struct snd_util_memhdr* memhdr; int /*<<< orphan*/  lock; int /*<<< orphan*/  presets_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_sf_list* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sf_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct snd_sf_list *
FUNC4(struct snd_sf_callback *callback, struct snd_util_memhdr *hdr)
{
	struct snd_sf_list *sflist;

	if ((sflist = FUNC0(sizeof(*sflist), GFP_KERNEL)) == NULL)
		return NULL;

	FUNC1(&sflist->presets_mutex);
	FUNC3(&sflist->lock);
	sflist->memhdr = hdr;

	if (callback)
		sflist->callback = *callback;

	FUNC2(sflist);
	return sflist;
}