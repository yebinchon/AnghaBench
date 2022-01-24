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
struct snd_rawmidi_file {struct snd_rawmidi* rmidi; int /*<<< orphan*/ * output; int /*<<< orphan*/ * input; } ;
struct snd_rawmidi {int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_rawmidi*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_rawmidi_file *rfile)
{
	struct snd_rawmidi *rmidi;

	rmidi = rfile->rmidi;
	FUNC1(&rmidi->open_mutex);
	if (rfile->input) {
		FUNC0(rmidi, rfile->input, 1);
		rfile->input = NULL;
	}
	if (rfile->output) {
		FUNC0(rmidi, rfile->output, 1);
		rfile->output = NULL;
	}
	rfile->rmidi = NULL;
	FUNC2(&rmidi->open_mutex);
	FUNC3(&rmidi->open_wait);
}