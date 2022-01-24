#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct coproc_operations {int /*<<< orphan*/  owner; int /*<<< orphan*/  devc; int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_3__* d; struct coproc_operations* coproc; TYPE_2__* dmap_in; TYPE_1__* dmap_out; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {int closing; } ;
struct TYPE_5__ {int closing; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPR_PCM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int OPEN_WRITE ; 
 TYPE_4__** audio_devs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct file*) ; 

void FUNC5(int dev, struct file *file)
{
	const struct coproc_operations *coprocessor;
	int mode = FUNC4(file);

	dev = dev >> 4;

	/*
	 * We do this in DMAbuf_release(). Why are we doing it
	 * here? Why don't we test the file mode before setting
	 * both flags? DMAbuf_release() does.
	 * ...pester...pester...pester...
	 */
	audio_devs[dev]->dmap_out->closing = 1;
	audio_devs[dev]->dmap_in->closing = 1;

	/*
	 * We need to make sure we allocated the dmap_out buffer
	 * before we go mucking around with it in sync_output().
	 */
	if (mode & OPEN_WRITE)
		FUNC3(dev);

	if ( (coprocessor = audio_devs[dev]->coproc) != NULL ) {
		coprocessor->close(coprocessor->devc, COPR_PCM);
		FUNC1(coprocessor->owner);
	}
	FUNC0(dev, mode);

	FUNC1(audio_devs[dev]->d->owner);
}