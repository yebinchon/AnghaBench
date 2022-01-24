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
 int /*<<< orphan*/  HDA_AMP_VOLMASK ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline int
FUNC2(struct hda_codec *codec, hda_nid_t nid,
		 int ch, int dir, int idx, unsigned int ofs,
		 unsigned int val)
{
	unsigned int maxval;

	if (val > 0)
		val += ofs;
	/* ofs = 0: raw max value */
	maxval = FUNC0(codec, nid, dir, 0);
	if (val > maxval)
		val = maxval;
	return FUNC1(codec, nid, ch, dir, idx,
					HDA_AMP_VOLMASK, val);
}