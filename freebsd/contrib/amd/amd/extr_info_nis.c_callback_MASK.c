#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nis_callback_data {int /*<<< orphan*/  ncd_map; int /*<<< orphan*/  ncd_m; int /*<<< orphan*/  (* ncd_fn ) (int /*<<< orphan*/ ,char*,char*) ;} ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int YP_NOMORE ; 
 int YP_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(int status, char *key, int kl, char *val, int vl, char *data)
{
  struct nis_callback_data *ncdp = (struct nis_callback_data *) data;

  if (status == YP_TRUE) {

    /* add to list of maps */
    char *kp = FUNC1(key, kl);
    char *vp = FUNC1(val, vl);

    (*ncdp->ncd_fn) (ncdp->ncd_m, kp, vp);

    /* we want more ... */
    return FALSE;

  } else {

    /* NOMORE means end of map - otherwise log error */
    if (status != YP_NOMORE) {
      /* check what went wrong */
      int e = FUNC4(status);

      FUNC0(XLOG_ERROR, "yp enumeration of %s: %s, status=%d, e=%d",
	   ncdp->ncd_map, FUNC3(e), status, e);
    }
    return TRUE;
  }
}