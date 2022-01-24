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
struct audio_in {int /*<<< orphan*/  audmgr; int /*<<< orphan*/  audpre; int /*<<< orphan*/  audrec; int /*<<< orphan*/  wait; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct audio_in *audio)
{
	if (audio->enabled) {
		audio->enabled = 0;

		FUNC0(audio, 0);

		FUNC3(&audio->wait);

		FUNC2(audio->audrec);
		FUNC2(audio->audpre);
		FUNC1(&audio->audmgr);
	}
	return 0;
}