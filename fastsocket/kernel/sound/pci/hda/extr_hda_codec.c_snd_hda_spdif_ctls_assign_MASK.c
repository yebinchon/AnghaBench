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
struct hda_spdif_out {scalar_t__ nid; unsigned short ctls; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; int /*<<< orphan*/  spdif_out; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__,unsigned short,unsigned short) ; 
 struct hda_spdif_out* FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct hda_codec *codec, int idx, hda_nid_t nid)
{
	struct hda_spdif_out *spdif;
	unsigned short val;

	FUNC0(&codec->spdif_mutex);
	spdif = FUNC3(&codec->spdif_out, idx);
	if (spdif->nid != nid) {
		spdif->nid = nid;
		val = spdif->ctls;
		FUNC2(codec, nid, val & 0xff, (val >> 8) & 0xff);
	}
	FUNC1(&codec->spdif_mutex);
}