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
struct snd_soc_dapm_widget {int /*<<< orphan*/  codec; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_dapm_widget*) ; 
 int FUNC2 (struct snd_soc_dapm_widget*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w)
{
	int out;

	if (w->active) {
		out = FUNC2(w);
		FUNC0(w->codec);
		return out != 0;
	} else {
		return FUNC1(w);
	}
}