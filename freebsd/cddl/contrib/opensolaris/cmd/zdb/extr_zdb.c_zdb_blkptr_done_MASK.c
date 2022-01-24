#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ zb_blkid; scalar_t__ zb_level; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
struct TYPE_6__ {int io_error; int io_flags; int /*<<< orphan*/  io_abd; TYPE_3__ io_bookmark; TYPE_2__* io_private; int /*<<< orphan*/ * io_bp; TYPE_4__* io_spa; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_7__ {int zcb_haderrors; int /*<<< orphan*/ * zcb_errors; } ;
typedef  TYPE_2__ zdb_cb_t ;
typedef  TYPE_3__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_9__ {int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; int /*<<< orphan*/  spa_load_verify_ios; int /*<<< orphan*/  spa_scrub_inflight; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int BP_SPRINTF_LEN ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	blkptr_t *bp = zio->io_bp;
	int ioerr = zio->io_error;
	zdb_cb_t *zcb = zio->io_private;
	zbookmark_phys_t *zb = &zio->io_bookmark;

	FUNC0(zio->io_abd);

	FUNC2(&spa->spa_scrub_lock);
	spa->spa_scrub_inflight--;
	spa->spa_load_verify_ios--;
	FUNC1(&spa->spa_scrub_io_cv);

	if (ioerr && !(zio->io_flags & ZIO_FLAG_SPECULATIVE)) {
		char blkbuf[BP_SPRINTF_LEN];

		zcb->zcb_haderrors = 1;
		zcb->zcb_errors[ioerr]++;

		if (dump_opt['b'] >= 2)
			FUNC5(blkbuf, sizeof (blkbuf), bp);
		else
			blkbuf[0] = '\0';

		(void) FUNC4("zdb_blkptr_cb: "
		    "Got error %d reading "
		    "<%llu, %llu, %lld, %llx> %s -- skipping\n",
		    ioerr,
		    (u_longlong_t)zb->zb_objset,
		    (u_longlong_t)zb->zb_object,
		    (u_longlong_t)zb->zb_level,
		    (u_longlong_t)zb->zb_blkid,
		    blkbuf);
	}
	FUNC3(&spa->spa_scrub_lock);
}