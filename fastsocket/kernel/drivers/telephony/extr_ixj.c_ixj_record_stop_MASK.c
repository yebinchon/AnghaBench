#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ recording; } ;
struct TYPE_6__ {int rec_mode; TYPE_1__ flags; scalar_t__ read_buffer_size; int /*<<< orphan*/ * read_buffer; int /*<<< orphan*/  rec_codec; int /*<<< orphan*/  board; } ;
typedef  TYPE_2__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(IXJ *j)
{
	if (ixjdebug & 0x0002)
		FUNC2("IXJ %d Stopping Record Codec %d at %ld\n", j->board, j->rec_codec, jiffies);

	FUNC1(j->read_buffer);
	j->read_buffer = NULL;
	j->read_buffer_size = 0;
	if (j->rec_mode > -1) {
		FUNC0(0x5120, j);
		j->rec_mode = -1;
	}
	j->flags.recording = 0;
}