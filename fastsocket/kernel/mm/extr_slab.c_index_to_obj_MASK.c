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
struct slab {void* s_mem; } ;
struct kmem_cache {unsigned int buffer_size; } ;

/* Variables and functions */

__attribute__((used)) static inline void *FUNC0(struct kmem_cache *cache, struct slab *slab,
				 unsigned int idx)
{
	return slab->s_mem + cache->buffer_size * idx;
}