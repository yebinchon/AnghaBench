#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hda_cvt_setup {scalar_t__ nid; } ;
struct TYPE_3__ {int used; } ;
struct hda_codec {TYPE_1__ cvt_setups; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 struct hda_cvt_setup* FUNC0 (TYPE_1__*,int) ; 
 struct hda_cvt_setup* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static struct hda_cvt_setup *
FUNC2(struct hda_codec *codec, hda_nid_t nid)
{
	struct hda_cvt_setup *p;
	int i;

	for (i = 0; i < codec->cvt_setups.used; i++) {
		p = FUNC0(&codec->cvt_setups, i);
		if (p->nid == nid)
			return p;
	}
	p = FUNC1(&codec->cvt_setups);
	if (p)
		p->nid = nid;
	return p;
}