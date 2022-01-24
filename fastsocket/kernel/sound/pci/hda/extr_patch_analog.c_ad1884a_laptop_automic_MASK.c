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
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	unsigned int idx;

	if (FUNC1(codec, 0x14))
		idx = 0;
	else if (FUNC1(codec, 0x1c))
		idx = 4;
	else
		idx = 1;
	FUNC0(codec, 0x0c, 0, AC_VERB_SET_CONNECT_SEL, idx);
}