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
 scalar_t__ FUNC0 (struct hda_codec*,unsigned int,int,unsigned int*) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 

unsigned int FUNC2(struct hda_codec *codec, hda_nid_t nid,
				int flags,
				unsigned int verb, unsigned int parm)
{
	unsigned cmd = FUNC1(codec, nid, flags, verb, parm);
	unsigned int res;
	if (FUNC0(codec, cmd, flags, &res))
		return -1;
	return res;
}