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
typedef  scalar_t__ YP_ORDER_OUTORDER_TYPE ;
struct TYPE_2__ {int /*<<< orphan*/  nis_domain; } ;

/* Variables and functions */
 int ENOENT ; 
#define  YPERR_YPERR 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__ gopt ; 
 int has_yp_order ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int
FUNC5(mnt_map *m, char *map, time_t *tp)
{
  YP_ORDER_OUTORDER_TYPE order;
  int yp_order_result;
  char *master;

  if (!gopt.nis_domain) {
    int error = FUNC0();
    if (error)
      return error;
  }

  /*
   * To see if the map exists, try to find
   * a master for it.
   */
  yp_order_result = FUNC4(gopt.nis_domain, map, &order);
  switch (yp_order_result) {
  case 0:
    /* NIS server found */
    has_yp_order = 1;
    *tp = (time_t) order;
    FUNC1("NIS master for %s@%s has order %lu", map, gopt.nis_domain, (unsigned long) order);
    break;
  case YPERR_YPERR:
    /* NIS+ server found ! */
    has_yp_order = 0;
    /* try yp_master() instead */
    if (FUNC3(gopt.nis_domain, map, &master)) {
      return ENOENT;
    } else {
      FUNC1("NIS master for %s@%s is a NIS+ server", map, gopt.nis_domain);
      /* Use fake timestamps */
      *tp = FUNC2(NULL);
    }
    break;
  default:
    /* server is down */
    has_yp_order = -1;
    return ENOENT;
  }
  return 0;
}