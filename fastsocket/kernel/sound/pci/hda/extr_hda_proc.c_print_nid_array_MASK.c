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
struct TYPE_2__ {int /*<<< orphan*/  device; scalar_t__ index; int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_array {int used; struct hda_nid_item* list; } ;
struct hda_nid_item {scalar_t__ nid; int flags; scalar_t__ index; struct snd_kcontrol* kctl; } ;
struct hda_codec {int dummy; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int HDA_NID_ITEM_AMP ; 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC5(struct snd_info_buffer *buffer,
			    struct hda_codec *codec, hda_nid_t nid,
			    struct snd_array *array)
{
	int i;
	struct hda_nid_item *items = array->list, *item;
	struct snd_kcontrol *kctl;
	for (i = 0; i < array->used; i++) {
		item = &items[i];
		if (item->nid == nid) {
			kctl = item->kctl;
			FUNC4(buffer,
			  "  Control: name=\"%s\", index=%i, device=%i\n",
			  kctl->id.name, kctl->id.index + item->index,
			  kctl->id.device);
			if (item->flags & HDA_NID_ITEM_AMP)
				FUNC4(buffer,
				  "    ControlAmp: chs=%lu, dir=%s, "
				  "idx=%lu, ofs=%lu\n",
				  FUNC0(kctl),
				  FUNC1(kctl) ? "Out" : "In",
				  FUNC2(kctl),
				  FUNC3(kctl));
		}
	}
}