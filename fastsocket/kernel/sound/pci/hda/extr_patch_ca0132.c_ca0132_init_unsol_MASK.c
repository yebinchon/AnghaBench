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
 int /*<<< orphan*/  UNSOL_TAG_AMIC1 ; 
 int /*<<< orphan*/  UNSOL_TAG_HP ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec)
{
	FUNC0(codec, UNSOL_TAG_HP, UNSOL_TAG_HP);
	FUNC0(codec, UNSOL_TAG_AMIC1, UNSOL_TAG_AMIC1);
}