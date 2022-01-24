#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_runtime {int /*<<< orphan*/  sleep; } ;
struct snd_rawmidi_file {TYPE_1__* output; TYPE_1__* input; } ;
struct file {struct snd_rawmidi_file* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_3__ {struct snd_rawmidi_runtime* runtime; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table * wait)
{
	struct snd_rawmidi_file *rfile;
	struct snd_rawmidi_runtime *runtime;
	unsigned int mask;

	rfile = file->private_data;
	if (rfile->input != NULL) {
		runtime = rfile->input->runtime;
		FUNC1(rfile->input, 1);
		FUNC0(file, &runtime->sleep, wait);
	}
	if (rfile->output != NULL) {
		runtime = rfile->output->runtime;
		FUNC0(file, &runtime->sleep, wait);
	}
	mask = 0;
	if (rfile->input != NULL) {
		if (FUNC2(rfile->input))
			mask |= POLLIN | POLLRDNORM;
	}
	if (rfile->output != NULL) {
		if (FUNC2(rfile->output))
			mask |= POLLOUT | POLLWRNORM;
	}
	return mask;
}