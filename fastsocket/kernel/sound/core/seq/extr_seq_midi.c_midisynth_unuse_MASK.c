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
struct snd_seq_port_subscribe {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  output; } ;
struct seq_midisynth {TYPE_1__ output_rfile; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(void *private_data, struct snd_seq_port_subscribe *info)
{
	struct seq_midisynth *msynth = private_data;

	if (FUNC0(!msynth->output_rfile.output))
		return -EINVAL;
	FUNC1(msynth->output_rfile.output);
	return FUNC2(&msynth->output_rfile);
}