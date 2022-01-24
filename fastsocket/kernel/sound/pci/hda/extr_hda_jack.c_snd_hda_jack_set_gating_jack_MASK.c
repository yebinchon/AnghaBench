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
struct hda_jack_tbl {void* gated_jack; void* gating_jack; } ;
struct hda_codec {int dummy; } ;
typedef  void* hda_nid_t ;

/* Variables and functions */
 int EINVAL ; 
 struct hda_jack_tbl* FUNC0 (struct hda_codec*,void*) ; 

int FUNC1(struct hda_codec *codec, hda_nid_t gated_nid,
				 hda_nid_t gating_nid)
{
	struct hda_jack_tbl *gated = FUNC0(codec, gated_nid);
	struct hda_jack_tbl *gating = FUNC0(codec, gating_nid);

	if (!gated || !gating)
		return -EINVAL;

	gated->gating_jack = gating_nid;
	gating->gated_jack = gated_nid;

	return 0;
}