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
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  dirstruct; } ;
typedef  TYPE_1__ apr_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static apr_status_t FUNC1(void *thedir)
{
    apr_dir_t *dir = thedir;
    if (FUNC0(dir->dirstruct) == 0) {
        return APR_SUCCESS;
    }
    else {
        return errno;
    }
}