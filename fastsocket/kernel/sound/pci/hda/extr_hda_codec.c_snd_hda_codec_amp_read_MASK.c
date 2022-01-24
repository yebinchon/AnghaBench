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
struct hda_codec {int /*<<< orphan*/  hash_mutex; } ;
struct hda_amp_info {unsigned int* vol; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hda_amp_info* FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int,int,int,int) ; 

int FUNC3(struct hda_codec *codec, hda_nid_t nid, int ch,
			   int direction, int index)
{
	struct hda_amp_info *info;
	unsigned int val = 0;

	FUNC0(&codec->hash_mutex);
	info = FUNC2(codec, nid, ch, direction, index, false);
	if (info)
		val = info->vol[ch];
	FUNC1(&codec->hash_mutex);
	return val;
}