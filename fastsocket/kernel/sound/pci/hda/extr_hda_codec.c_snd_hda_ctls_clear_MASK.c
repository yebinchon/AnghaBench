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
struct hda_nid_item {int /*<<< orphan*/  kctl; } ;
struct TYPE_4__ {int used; struct hda_nid_item* list; } ;
struct hda_codec {TYPE_2__ nids; TYPE_2__ mixers; TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hda_codec *codec)
{
	int i;
	struct hda_nid_item *items = codec->mixers.list;
	for (i = 0; i < codec->mixers.used; i++)
		FUNC1(codec->bus->card, items[i].kctl);
	FUNC0(&codec->mixers);
	FUNC0(&codec->nids);
}