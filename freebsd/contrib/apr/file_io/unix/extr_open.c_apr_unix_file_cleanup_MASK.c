#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ apr_status_t ;
struct TYPE_4__ {scalar_t__ buffered; } ;
typedef  TYPE_1__ apr_file_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

apr_status_t FUNC2(void *thefile)
{
    apr_file_t *file = thefile;
    apr_status_t flush_rv = APR_SUCCESS, rv = APR_SUCCESS;

    if (file->buffered) {
        flush_rv = FUNC0(file);
    }

    rv = FUNC1(file, 0);

    return rv != APR_SUCCESS ? rv : flush_rv;
}