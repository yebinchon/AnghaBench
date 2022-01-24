#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_7__ {TYPE_1__* cfm; } ;
typedef  TYPE_2__ mnt_map ;
typedef  int /*<<< orphan*/  YP_ORDER_OUTORDER_TYPE ;
struct TYPE_8__ {int /*<<< orphan*/  nis_domain; scalar_t__ am_timeo; } ;
struct TYPE_6__ {int cfm_flags; } ;

/* Variables and functions */
 int CFM_SUN_MAP_SYNTAX ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
#define  YPERR_KEY 128 
 int FUNC1 () ; 
 TYPE_5__ gopt ; 
 int has_yp_order ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int
FUNC10(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  int outlen;
  int res;
  YP_ORDER_OUTORDER_TYPE order;

  /*
   * Make sure domain initialized
   */
  if (!gopt.nis_domain) {
    int error = FUNC1();
    if (error)
      return error;
  }


  switch (has_yp_order) {
  case 1:
    /*
     * NIS server with yp_order
     * Check if map has changed
     */
    if (FUNC8(gopt.nis_domain, map, &order))
      return EIO;
    if ((time_t) order > *tp) {
      *tp = (time_t) order;
      return -1;
    }
    break;

  case 0:
    /*
     * NIS+ server without yp_order
     * Check if timeout has expired to invalidate the cache
     */
    order = FUNC6(NULL);
    if ((time_t)order - *tp > gopt.am_timeo) {
      *tp = (time_t)order;
      return(-1);
    }
    break;

  default:
    /*
     * server was down
     */
     if (FUNC2(m, map))
       return -1;
     return EIO;
  }

  /*
   * Lookup key
   */
  res = FUNC7(gopt.nis_domain, map, key, FUNC4(key), pval, &outlen);
  if (m->cfm && (m->cfm->cfm_flags & CFM_SUN_MAP_SYNTAX) && res == 0) {
    char *oldval = *pval;
    *pval = FUNC5(key, oldval);
    /* We always need to free the output of the yp_match call. */
    FUNC0(oldval);
    if (*pval == NULL)
      return -1;		/* sun2amd parser error */
  }

  /*
   * Do something interesting with the return code
   */
  switch (res) {
  case 0:
    return 0;

  case YPERR_KEY:
    return ENOENT;

  default:
    FUNC3(XLOG_ERROR, "nis_search: %s: %s", map, FUNC9(res));
    return EIO;
  }
}