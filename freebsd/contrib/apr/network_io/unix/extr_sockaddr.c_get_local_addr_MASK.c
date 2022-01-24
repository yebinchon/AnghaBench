#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  apr_status_t ;
struct TYPE_9__ {TYPE_2__* local_addr; scalar_t__ local_interface_unknown; scalar_t__ local_port_unknown; int /*<<< orphan*/  socketdes; } ;
typedef  TYPE_4__ apr_socket_t ;
struct TYPE_6__ {int /*<<< orphan*/  sin_port; } ;
struct TYPE_8__ {TYPE_1__ sin; } ;
struct TYPE_7__ {int salen; TYPE_3__ sa; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t FUNC3(apr_socket_t *sock)
{
    sock->local_addr->salen = sizeof(sock->local_addr->sa);
    if (FUNC1(sock->socketdes, (struct sockaddr *)&sock->local_addr->sa,
                    &sock->local_addr->salen) < 0) {
        return FUNC0();
    }
    else {
        sock->local_port_unknown = sock->local_interface_unknown = 0;
        /* XXX assumes sin_port and sin6_port at same offset */
        sock->local_addr->port = FUNC2(sock->local_addr->sa.sin.sin_port);
        return APR_SUCCESS;
    }
}