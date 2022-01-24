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
struct seq_midisynth {scalar_t__ seq_client; scalar_t__ parser; int /*<<< orphan*/  seq_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_midisynth *msynth)
{
	if (msynth == NULL)
		return;

	if (msynth->seq_client > 0) {
		/* delete port */
		FUNC1(msynth->seq_client, msynth->seq_port);
	}

	if (msynth->parser)
		FUNC0(msynth->parser);
}