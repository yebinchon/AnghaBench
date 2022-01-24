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
struct vx_core {int* audio_active; } ;
struct vx_audio_level {int has_mute; int mute; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vx_audio_level*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct vx_core*,int,int /*<<< orphan*/ ,struct vx_audio_level*) ; 

__attribute__((used)) static int FUNC2(struct vx_core *chip, int audio, int active)
{
	struct vx_audio_level info;

	FUNC0(&info, 0, sizeof(info));
	info.has_mute = 1;
	info.mute = !active;
	chip->audio_active[audio] = active;
	return FUNC1(chip, audio, 0, &info); /* playback only */
}