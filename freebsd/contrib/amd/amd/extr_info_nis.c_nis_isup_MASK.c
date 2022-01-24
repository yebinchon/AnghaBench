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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  mnt_map ;
typedef  int /*<<< orphan*/  YP_ORDER_OUTORDER_TYPE ;
struct TYPE_2__ {int /*<<< orphan*/  nis_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 TYPE_1__ gopt ; 
 int has_yp_order ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int
FUNC6(mnt_map *m, char *map)
{
  YP_ORDER_OUTORDER_TYPE order;
  int error;
  char *master;
  static int last_status = 1;	/* assume up by default */

  switch (has_yp_order) {
  case 1:
    /*
     * NIS server with yp_order
     */
    error = FUNC3(gopt.nis_domain, map, &order);
    if (error != 0) {
      FUNC1(XLOG_ERROR,
	   "nis_isup: error getting the order of map %s: %s",
	   map, FUNC4(FUNC5(error)));
      last_status = 0;
      return 0;			/* NIS is down */
    }
    break;

  case 0:
    /*
     * NIS+ server without yp_order
     */
    error = FUNC2(gopt.nis_domain, map, &master);
    if (error != 0) {
      FUNC1(XLOG_ERROR,
	   "nis_isup: error getting the master of map %s: %s",
	   map, FUNC4(FUNC5(error)));
      last_status = 0;
      return 0;			/* NIS+ is down */
    }
    break;

  default:
    /*
     * server was down
     */
    last_status = 0;
  }

  if (last_status == 0) {	/* reinitialize if was down before */
    time_t dummy;
    error = FUNC0(m, map, &dummy);
    if (error)
      return 0;			/* still down */
    FUNC1(XLOG_INFO, "nis_isup: NIS came back up for map %s", map);
    last_status = 1;
  }
  return 1;			/* NIS is up */
}