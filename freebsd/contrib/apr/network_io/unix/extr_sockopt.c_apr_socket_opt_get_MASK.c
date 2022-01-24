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
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;
typedef  int apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

apr_status_t FUNC1(apr_socket_t *sock, 
                                apr_int32_t opt, apr_int32_t *on)
{
    switch(opt) {
        default:
            *on = FUNC0(sock, opt);
    }
    return APR_SUCCESS;
}