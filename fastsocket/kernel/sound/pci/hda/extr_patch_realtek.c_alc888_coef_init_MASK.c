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

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_PROC_COEF ; 
 int /*<<< orphan*/  AC_VERB_SET_COEF_INDEX ; 
 int /*<<< orphan*/  AC_VERB_SET_PROC_COEF ; 
 unsigned int FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	unsigned int tmp;

	FUNC1(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX, 0);
	tmp = FUNC0(codec, 0x20, 0, AC_VERB_GET_PROC_COEF, 0);
	FUNC1(codec, 0x20, 0, AC_VERB_SET_COEF_INDEX, 7);
	if ((tmp & 0xf0) == 0x20)
		/* alc888S-VC */
		FUNC0(codec, 0x20, 0,
				   AC_VERB_SET_PROC_COEF, 0x830);
	 else
		 /* alc888-VB */
		 FUNC0(codec, 0x20, 0,
				    AC_VERB_SET_PROC_COEF, 0x3030);
}