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
typedef  scalar_t__ ypall_callback_fxn_t ;
typedef  scalar_t__ voidp ;
struct ypall_callback {scalar_t__ foreach; scalar_t__ data; } ;
struct nis_callback_data {char* ncd_map; void (* ncd_fn ) (int /*<<< orphan*/ *,char*,char*) ;int /*<<< orphan*/ * ncd_m; } ;
typedef  int /*<<< orphan*/  mnt_map ;
struct TYPE_2__ {int /*<<< orphan*/  nis_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 scalar_t__ callback ; 
 int FUNC0 () ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,struct ypall_callback*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(mnt_map *m, char *map, void (*fn) (mnt_map *, char *, char *))
{
  int error;
  struct nis_callback_data data;
  struct ypall_callback cbinfo;

  if (!gopt.nis_domain) {
    error = FUNC0();
    if (error)
      return error;
  }
  data.ncd_m = m;
  data.ncd_map = map;
  data.ncd_fn = fn;
  cbinfo.data = (voidp) &data;
  cbinfo.foreach = (ypall_callback_fxn_t) callback;

  FUNC1(XLOG_INFO, "NIS map %s reloading using yp_all", map);
  /*
   * If you are using NIS and your yp_all function is "broken", you have to
   * get it fixed.  The bug in yp_all() is that it does not close a TCP
   * connection to ypserv, and this ypserv runs out of open file descriptors,
   * getting into an infinite loop, thus all YP clients eventually unbind
   * and hang too.
   */
  error = FUNC2(gopt.nis_domain, map, &cbinfo);

  if (error)
    FUNC1(XLOG_ERROR, "error grabbing nis map of %s: %s", map, FUNC3(FUNC4(error)));
  return error;
}