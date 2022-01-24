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
struct hda_verb {int dummy; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ verbs; } ;

/* Variables and functions */
 struct hda_verb** FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,struct hda_verb*) ; 

void FUNC2(struct hda_codec *codec)
{
	int i;
	for (i = 0; i < codec->verbs.used; i++) {
		struct hda_verb **v = FUNC0(&codec->verbs, i);
		FUNC1(codec, *v);
	}
}