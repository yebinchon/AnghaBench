#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ voidp ;
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  fserver ;
struct TYPE_3__ {int as_opt; int /*<<< orphan*/  as_str; } ;
typedef  TYPE_1__ amq_setopt ;
struct TYPE_4__ {int /*<<< orphan*/  logfile; } ;

/* Variables and functions */
#define  AMOPT_DEBUG 131 
#define  AMOPT_FLUSHMAPC 130 
#define  AMOPT_LOGFILE 129 
#define  AMOPT_XLOG 128 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  Run ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  amd_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_mapc_reload ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ gopt ; 
 int /*<<< orphan*/  orig_umask ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int *
FUNC7(voidp argp, struct svc_req *rqstp)
{
  static int rc;
  amq_setopt *opt = (amq_setopt *) argp;

  rc = 0;

  switch (opt->as_opt) {

  case AMOPT_DEBUG:
    if (FUNC1(opt->as_str))
      rc = EINVAL;
    break;

  case AMOPT_LOGFILE:
    if (gopt.logfile && opt->as_str
	&& FUNC0(gopt.logfile, opt->as_str)) {
      if (FUNC6(opt->as_str, orig_umask, 0))
	rc = EINVAL;
    } else {
      rc = EACCES;
    }
    break;

  case AMOPT_XLOG:
    if (FUNC5(opt->as_str))
      rc = EINVAL;
    break;

  case AMOPT_FLUSHMAPC:
    if (amd_state == Run) {
      FUNC4(XLOG_INFO, "amq says flush cache");
      do_mapc_reload = 0;
      FUNC2((fserver *) NULL);
      FUNC3((fserver *) NULL);
    }
    break;
  }

  return &rc;
}