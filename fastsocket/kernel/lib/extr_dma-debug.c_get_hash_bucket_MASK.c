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
struct hash_bucket {int /*<<< orphan*/  lock; } ;
struct dma_debug_entry {int dummy; } ;

/* Variables and functions */
 struct hash_bucket* dma_entry_hash ; 
 int FUNC0 (struct dma_debug_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct hash_bucket *FUNC2(struct dma_debug_entry *entry,
					   unsigned long *flags)
{
	int idx = FUNC0(entry);
	unsigned long __flags;

	FUNC1(&dma_entry_hash[idx].lock, __flags);
	*flags = __flags;
	return &dma_entry_hash[idx];
}