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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct hda_cache_rec {size_t* hash; int /*<<< orphan*/  buf; } ;
struct hda_cache_head {size_t key; size_t next; scalar_t__ dirty; scalar_t__ val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*) ; 
 struct hda_cache_head* FUNC1 (struct hda_cache_rec*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,struct hda_cache_head*) ; 
 struct hda_cache_head* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct hda_cache_head  *FUNC4(struct hda_cache_rec *cache,
					      u32 key)
{
	struct hda_cache_head *info = FUNC1(cache, key);
	if (!info) {
		u16 idx, cur;
		/* add a new hash entry */
		info = FUNC3(&cache->buf);
		if (!info)
			return NULL;
		cur = FUNC2(&cache->buf, info);
		info->key = key;
		info->val = 0;
		info->dirty = 0;
		idx = key % (u16)FUNC0(cache->hash);
		info->next = cache->hash[idx];
		cache->hash[idx] = cur;
	}
	return info;
}