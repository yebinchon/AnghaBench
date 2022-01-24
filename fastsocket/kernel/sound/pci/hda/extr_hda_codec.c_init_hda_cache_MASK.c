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
struct hda_cache_rec {int /*<<< orphan*/  buf; struct hda_cache_rec* hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_cache_rec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(struct hda_cache_rec *cache,
				     unsigned int record_size)
{
	FUNC0(cache, 0, sizeof(*cache));
	FUNC0(cache->hash, 0xff, sizeof(cache->hash));
	FUNC1(&cache->buf, record_size, 64);
}