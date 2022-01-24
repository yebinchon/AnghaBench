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
struct hda_codec {int /*<<< orphan*/  afg; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_PAR_AMP_IN_CAP ; 
 int /*<<< orphan*/  AC_PAR_AMP_OUT_CAP ; 
 int AC_WCAP_AMP_OVRD ; 
 int HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct hda_codec *codec, hda_nid_t nid,
				 int direction)
{
	if (!(FUNC0(codec, nid) & AC_WCAP_AMP_OVRD))
		nid = codec->afg;
	return FUNC1(codec, nid,
				  direction == HDA_OUTPUT ?
				  AC_PAR_AMP_OUT_CAP : AC_PAR_AMP_IN_CAP);
}