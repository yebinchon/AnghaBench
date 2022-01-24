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
struct hash_bucket {int dummy; } ;
struct dma_debug_entry {int dev_addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HASH_FN_SHIFT ; 
 struct dma_debug_entry* FUNC0 (struct hash_bucket*,struct dma_debug_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  containing_match ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hash_bucket* FUNC2 (struct dma_debug_entry*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct hash_bucket*,unsigned long*) ; 

__attribute__((used)) static struct dma_debug_entry *FUNC4(struct hash_bucket **bucket,
						   struct dma_debug_entry *ref,
						   unsigned long *flags)
{

	unsigned int max_range = FUNC1(ref->dev);
	struct dma_debug_entry *entry, index = *ref;
	unsigned int range = 0;

	while (range <= max_range) {
		entry = FUNC0(*bucket, &index, containing_match);

		if (entry)
			return entry;

		/*
		 * Nothing found, go back a hash bucket
		 */
		FUNC3(*bucket, flags);
		range          += (1 << HASH_FN_SHIFT);
		index.dev_addr -= (1 << HASH_FN_SHIFT);
		*bucket = FUNC2(&index, flags);
	}

	return NULL;
}