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
typedef  scalar_t__ u16 ;
struct hda_spdif_out {scalar_t__ nid; } ;
struct hda_codec {int /*<<< orphan*/  spdif_mutex; int /*<<< orphan*/  spdif_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hda_spdif_out* FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct hda_codec *codec, int idx)
{
	struct hda_spdif_out *spdif;

	FUNC0(&codec->spdif_mutex);
	spdif = FUNC2(&codec->spdif_out, idx);
	spdif->nid = (u16)-1;
	FUNC1(&codec->spdif_mutex);
}