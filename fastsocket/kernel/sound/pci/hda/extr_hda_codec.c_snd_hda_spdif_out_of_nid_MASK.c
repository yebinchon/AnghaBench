#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hda_spdif_out {scalar_t__ nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ spdif_out; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 struct hda_spdif_out* FUNC0 (TYPE_1__*,int) ; 

struct hda_spdif_out *FUNC1(struct hda_codec *codec,
					       hda_nid_t nid)
{
	int i;
	for (i = 0; i < codec->spdif_out.used; i++) {
		struct hda_spdif_out *spdif =
				FUNC0(&codec->spdif_out, i);
		if (spdif->nid == nid)
			return spdif;
	}
	return NULL;
}