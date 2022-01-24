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
struct kmem_cache {int dummy; } ;
struct bio_slab {unsigned int slab_size; int slab_ref; struct kmem_cache* slab; int /*<<< orphan*/  name; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  bio_slab_lock ; 
 unsigned int bio_slab_max ; 
 unsigned int bio_slab_nr ; 
 struct bio_slab* bio_slabs ; 
 struct kmem_cache* FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bio_slab* FUNC1 (struct bio_slab*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 

__attribute__((used)) static struct kmem_cache *FUNC6(unsigned int extra_size)
{
	unsigned int sz = sizeof(struct bio) + extra_size;
	struct kmem_cache *slab = NULL;
	struct bio_slab *bslab;
	unsigned int i, entry = -1;

	FUNC2(&bio_slab_lock);

	i = 0;
	while (i < bio_slab_nr) {
		struct bio_slab *bslab = &bio_slabs[i];

		if (!bslab->slab && entry == -1)
			entry = i;
		else if (bslab->slab_size == sz) {
			slab = bslab->slab;
			bslab->slab_ref++;
			break;
		}
		i++;
	}

	if (slab)
		goto out_unlock;

	if (bio_slab_nr == bio_slab_max && entry == -1) {
		bio_slab_max <<= 1;
		bio_slabs = FUNC1(bio_slabs,
				     bio_slab_max * sizeof(struct bio_slab),
				     GFP_KERNEL);
		if (!bio_slabs)
			goto out_unlock;
	}
	if (entry == -1)
		entry = bio_slab_nr++;

	bslab = &bio_slabs[entry];

	FUNC5(bslab->name, sizeof(bslab->name), "bio-%d", entry);
	slab = FUNC0(bslab->name, sz, 0, SLAB_HWCACHE_ALIGN, NULL);
	if (!slab)
		goto out_unlock;

	FUNC4("bio: create slab <%s> at %d\n", bslab->name, entry);
	bslab->slab = slab;
	bslab->slab_ref = 1;
	bslab->slab_size = sz;
out_unlock:
	FUNC3(&bio_slab_lock);
	return slab;
}