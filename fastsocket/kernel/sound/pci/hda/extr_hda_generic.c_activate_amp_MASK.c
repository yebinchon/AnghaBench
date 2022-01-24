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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,unsigned int,int) ; 
 scalar_t__ FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, hda_nid_t nid, int dir,
			 int idx, int idx_to_check, bool enable)
{
	unsigned int caps;
	unsigned int mask, val;

	if (!enable && FUNC2(codec, nid, dir, idx_to_check))
		return;

	caps = FUNC3(codec, nid, dir);
	val = FUNC1(codec, nid, dir, caps, enable);
	mask = FUNC0(codec, nid, dir, idx_to_check, caps);
	if (!mask)
		return;

	val &= mask;
	FUNC4(codec, nid, dir, idx, mask, val);
}