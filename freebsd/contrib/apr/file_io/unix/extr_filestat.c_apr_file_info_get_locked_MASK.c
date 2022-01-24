#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  struct_stat ;
typedef  scalar_t__ apr_status_t ;
typedef  int apr_int32_t ;
struct TYPE_7__ {int valid; int /*<<< orphan*/  fname; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ apr_finfo_t ;
struct TYPE_8__ {int /*<<< orphan*/  fname; int /*<<< orphan*/  pool; int /*<<< orphan*/  filedes; scalar_t__ buffered; } ;
typedef  TYPE_2__ apr_file_t ;

/* Variables and functions */
 scalar_t__ APR_INCOMPLETE ; 
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

apr_status_t FUNC3(apr_finfo_t *finfo, apr_int32_t wanted,
                                      apr_file_t *thefile)
{
    struct_stat info;

    if (thefile->buffered) {
        apr_status_t rv = FUNC0(thefile);
        if (rv != APR_SUCCESS)
            return rv;
    }

    if (FUNC2(thefile->filedes, &info) == 0) {
        finfo->pool = thefile->pool;
        finfo->fname = thefile->fname;
        FUNC1(finfo, &info, wanted);
        return (wanted & ~finfo->valid) ? APR_INCOMPLETE : APR_SUCCESS;
    }
    else {
        return errno;
    }
}