#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_5__ {scalar_t__ timeout; int /*<<< orphan*/  options; int /*<<< orphan*/  socketdes; } ;
typedef  TYPE_1__ apr_socket_t ;
typedef  scalar_t__ apr_interval_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_INCOMPLETE_READ ; 
 int /*<<< orphan*/  APR_SO_NONBLOCK ; 
 int /*<<< orphan*/  APR_SUCCESS ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

apr_status_t FUNC4(apr_socket_t *sock, apr_interval_time_t t)
{
    apr_status_t stat;

    /* If our new timeout is non-negative and our old timeout was
     * negative, then we need to ensure that we are non-blocking.
     * Conversely, if our new timeout is negative and we had
     * non-negative timeout, we must make sure our socket is blocking.
     * We want to avoid calling fcntl more than necessary on the
     * socket.
     */
    if (t >= 0 && sock->timeout < 0) {
        if (FUNC0(sock, APR_SO_NONBLOCK) != 1) {
            if ((stat = FUNC3(sock->socketdes)) != APR_SUCCESS) {
                return stat;
            }
            FUNC1(sock, APR_SO_NONBLOCK, 1);
        }
    } 
    else if (t < 0 && sock->timeout >= 0) {
        if (FUNC0(sock, APR_SO_NONBLOCK) != 0) { 
            if ((stat = FUNC2(sock->socketdes)) != APR_SUCCESS) { 
                return stat; 
            }
            FUNC1(sock, APR_SO_NONBLOCK, 0);
        } 
    }
    /* must disable the incomplete read support if we disable
     * a timeout
     */
    if (t <= 0) {
        sock->options &= ~APR_INCOMPLETE_READ;
    }
    sock->timeout = t;
    return APR_SUCCESS;
}