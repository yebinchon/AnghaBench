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
struct audio {scalar_t__ out_needed; int /*<<< orphan*/  audmgr; int /*<<< orphan*/  dec_id; int /*<<< orphan*/  audplay; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct audio *audio)
{
	FUNC4("audio_disable()\n");
	if (audio->enabled) {
		audio->enabled = 0;
		FUNC0(audio, 0);
		FUNC5(&audio->write_wait);
		FUNC5(&audio->read_wait);
		FUNC3(audio->audplay);
		FUNC2(audio->dec_id, audio);
		FUNC1(&audio->audmgr);
		audio->out_needed = 0;
	}
	return 0;
}