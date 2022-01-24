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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  analogue_routes ; 
 int /*<<< orphan*/  lineout1_diff_routes ; 
 int /*<<< orphan*/  lineout1_se_routes ; 
 int /*<<< orphan*/  lineout2_diff_routes ; 
 int /*<<< orphan*/  lineout2_se_routes ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct snd_soc_codec *codec,
				int lineout1_diff, int lineout2_diff)
{
	FUNC1(codec, analogue_routes,
				FUNC0(analogue_routes));

	if (lineout1_diff)
		FUNC1(codec,
					lineout1_diff_routes,
					FUNC0(lineout1_diff_routes));
	else
		FUNC1(codec,
					lineout1_se_routes,
					FUNC0(lineout1_se_routes));

	if (lineout2_diff)
		FUNC1(codec,
					lineout2_diff_routes,
					FUNC0(lineout2_diff_routes));
	else
		FUNC1(codec,
					lineout2_se_routes,
					FUNC0(lineout2_se_routes));

	return 0;
}