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
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_3__ {int /*<<< orphan*/  socketdes; } ;
typedef  TYPE_1__ apr_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_ENOTIMPL ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  SIOCATMARK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

apr_status_t FUNC2(apr_socket_t *sock, int *atmark)
{
#ifndef BEOS_R5
    int oobmark;

    if (FUNC1(sock->socketdes, SIOCATMARK, (void*) &oobmark) < 0)
        return FUNC0();

    *atmark = (oobmark != 0);

    return APR_SUCCESS;
#else /* BEOS_R5 */
    return APR_ENOTIMPL;
#endif
}