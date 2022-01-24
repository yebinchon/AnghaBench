#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nidle; int /*<<< orphan*/  avail_list; } ;
typedef  TYPE_1__ apr_reslist_t ;
typedef  int /*<<< orphan*/  apr_res_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static apr_res_t *FUNC2(apr_reslist_t *reslist)
{
    apr_res_t *res;
    res = FUNC0(&reslist->avail_list);
    FUNC1(res, link);
    reslist->nidle--;
    return res;
}