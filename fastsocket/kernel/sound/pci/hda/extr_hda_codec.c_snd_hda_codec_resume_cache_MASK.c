#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int used; } ;
struct TYPE_3__ {TYPE_2__ buf; } ;
struct hda_codec {int /*<<< orphan*/  hash_mutex; TYPE_1__ cmd_cache; scalar_t__ cached_write; } ;
struct hda_cache_head {int /*<<< orphan*/  val; scalar_t__ dirty; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct hda_cache_head* FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct hda_codec *codec)
{
	int i;

	FUNC2(&codec->hash_mutex);
	codec->cached_write = 0;
	for (i = 0; i < codec->cmd_cache.buf.used; i++) {
		struct hda_cache_head *buffer;
		u32 key;

		buffer = FUNC4(&codec->cmd_cache.buf, i);
		key = buffer->key;
		if (!key)
			continue;
		if (!buffer->dirty)
			continue;
		buffer->dirty = 0;
		FUNC3(&codec->hash_mutex);
		FUNC5(codec, FUNC1(key), 0,
				    FUNC0(key), buffer->val);
		FUNC2(&codec->hash_mutex);
	}
	FUNC3(&codec->hash_mutex);
}