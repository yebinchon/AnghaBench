#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ cidplay; } ;
struct TYPE_16__ {int cidsize; int /*<<< orphan*/  write_q; scalar_t__ cid_play_flag; scalar_t__ cid_rec_flag; int /*<<< orphan*/  cid_rec_volume; int /*<<< orphan*/  cid_rec_codec; int /*<<< orphan*/  cid_play_volume; int /*<<< orphan*/  cid_play_aec_level; int /*<<< orphan*/  cid_play_codec; int /*<<< orphan*/  cid_base_frame_size; scalar_t__ fskdcnt; int /*<<< orphan*/  board; TYPE_1__ flags; } ;
typedef  TYPE_2__ IXJ ;

/* Variables and functions */
 int /*<<< orphan*/  PLD_SLIC_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(IXJ *j)
{
	FUNC4(j);

	if(j->cidsize > 5000) {
		FUNC0(PLD_SLIC_STATE_STANDBY, j);
	}
	j->flags.cidplay = 0;
	if(ixjdebug & 0x0200) {
		FUNC6("IXJ phone%d Finished Playing CallerID data %ld\n", j->board, jiffies);
	}

	FUNC2(j);

	j->fskdcnt = 0;
	FUNC7(j, j->cid_base_frame_size);
	FUNC8(j, j->cid_play_codec);
	FUNC1(j, j->cid_play_aec_level);
	FUNC9(j, j->cid_play_volume);

	FUNC10(j, j->cid_rec_codec);
	FUNC11(j, j->cid_rec_volume);

	if(j->cid_rec_flag)
		FUNC5(j);

	if(j->cid_play_flag)
		FUNC3(j);

	if(j->cid_play_flag) {
		FUNC12(&j->write_q);	/* Wake any blocked writers */
	}
}