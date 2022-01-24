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
struct hda_codec {TYPE_1__* bus; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {scalar_t__ sync_write; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,unsigned int,int,unsigned int*) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 

int FUNC2(struct hda_codec *codec, hda_nid_t nid, int flags,
			unsigned int verb, unsigned int parm)
{
	unsigned int cmd = FUNC1(codec, nid, flags, verb, parm);
	unsigned int res;
	return FUNC0(codec, cmd, flags,
			       codec->bus->sync_write ? &res : NULL);
}