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
 int /*<<< orphan*/  base_map ; 
 int /*<<< orphan*/  dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	FUNC4(codec, dapm_widgets,
				  FUNC0(dapm_widgets));

	FUNC2(codec, base_map, FUNC0(base_map));

	FUNC3(codec, "Headphone Jack");
	FUNC3(codec, "Line In");
	FUNC3(codec, "Line Out");
	FUNC3(codec, "Mic Jack");

	FUNC1(codec);
	FUNC5(codec);

	return 0;
}