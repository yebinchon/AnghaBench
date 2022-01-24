#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  q_back; } ;
typedef  TYPE_2__ qelem ;
struct TYPE_10__ {int /*<<< orphan*/  m_q; void* m_mount; int /*<<< orphan*/  m_name; } ;
typedef  TYPE_3__ fsi_mount ;
struct TYPE_11__ {scalar_t__ d_passno; scalar_t__ d_freq; int /*<<< orphan*/  d_mask; int /*<<< orphan*/  d_dev; TYPE_1__* d_host; int /*<<< orphan*/  d_ioloc; int /*<<< orphan*/  d_fstype; TYPE_2__* d_mount; } ;
typedef  TYPE_4__ disk_fs ;
struct TYPE_8__ {int /*<<< orphan*/  h_hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DF_FREQ ; 
 int /*<<< orphan*/  DF_FSTYPE ; 
 int /*<<< orphan*/  DF_MOUNT ; 
 int /*<<< orphan*/  DF_OPTS ; 
 int /*<<< orphan*/  DF_PASSNO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 () ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(disk_fs *dp)
{
  /*
   * "fstype"
   */
  if (FUNC1(dp->d_mask, DF_FSTYPE)) {
    if (FUNC2(dp->d_fstype, "swap")) {

      /*
       * Fixup for a swap device
       */
      if (!FUNC1(dp->d_mask, DF_PASSNO)) {
	dp->d_passno = 0;
	FUNC0(dp->d_mask, DF_PASSNO);
      } else if (dp->d_freq != 0) {
	FUNC5(dp->d_ioloc,
		 "Pass number for %s:%s is non-zero",
		 dp->d_host->h_hostname, dp->d_dev);
      }

      /*
       * "freq"
       */
      if (!FUNC1(dp->d_mask, DF_FREQ)) {
	dp->d_freq = 0;
	FUNC0(dp->d_mask, DF_FREQ);
      } else if (dp->d_freq != 0) {
	FUNC5(dp->d_ioloc,
		 "dump frequency for %s:%s is non-zero",
		 dp->d_host->h_hostname, dp->d_dev);
      }

      /*
       * "opts"
       */
      if (!FUNC1(dp->d_mask, DF_OPTS))
	FUNC8(dp, DF_OPTS, FUNC9("swap"));

      /*
       * "mount"
       */
      if (!FUNC1(dp->d_mask, DF_MOUNT)) {
	qelem *q = FUNC7();
	fsi_mount *m = FUNC6();

	m->m_name = FUNC9("swap");
	m->m_mount = FUNC7();
	FUNC3(&m->m_q, q->q_back);
	dp->d_mount = q;
	FUNC0(dp->d_mask, DF_MOUNT);
      } else {
	FUNC4(dp->d_ioloc, "%s: mount field specified for swap partition", dp->d_host->h_hostname);
      }
    } else if (FUNC2(dp->d_fstype, "export")) {

      /*
       * "passno"
       */
      if (!FUNC1(dp->d_mask, DF_PASSNO)) {
	dp->d_passno = 0;
	FUNC0(dp->d_mask, DF_PASSNO);
      } else if (dp->d_passno != 0) {
	FUNC5(dp->d_ioloc,
		 "pass number for %s:%s is non-zero",
		 dp->d_host->h_hostname, dp->d_dev);
      }

      /*
       * "freq"
       */
      if (!FUNC1(dp->d_mask, DF_FREQ)) {
	dp->d_freq = 0;
	FUNC0(dp->d_mask, DF_FREQ);
      } else if (dp->d_freq != 0) {
	FUNC5(dp->d_ioloc,
		 "dump frequency for %s:%s is non-zero",
		 dp->d_host->h_hostname, dp->d_dev);
      }

      /*
       * "opts"
       */
      if (!FUNC1(dp->d_mask, DF_OPTS))
	FUNC8(dp, DF_OPTS, FUNC9("rw,defaults"));

    }
  }
}