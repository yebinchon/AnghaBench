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
struct hda_codec {scalar_t__ const* slave_dig_outs; } ;
typedef  scalar_t__ const hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,scalar_t__ const,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec, hda_nid_t nid,
			int verb, int val)
{
	const hda_nid_t *d;

	FUNC0(codec, nid, 0, verb, val);
	d = codec->slave_dig_outs;
	if (!d)
		return;
	for (; *d; d++)
		FUNC0(codec, *d, 0, verb, val);
}