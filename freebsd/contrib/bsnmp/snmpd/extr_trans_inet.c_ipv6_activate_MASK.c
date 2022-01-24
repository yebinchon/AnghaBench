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
struct port_sock {int dummy; } ;
struct inet_port {int /*<<< orphan*/  row_status; int /*<<< orphan*/  socks; } ;

/* Variables and functions */
 int /*<<< orphan*/  RowStatus_active ; 
 int const SNMP_ERR_NOERROR ; 
 struct port_sock* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct port_sock*) ; 
 int FUNC2 (struct port_sock*) ; 

__attribute__((used)) static int
FUNC3(struct inet_port *p)
{
	struct port_sock *sock = FUNC0(&p->socks);
	FUNC1(sock);

	const int ret = FUNC2(sock);

	if (ret == SNMP_ERR_NOERROR)
		p->row_status = RowStatus_active;
	return (ret);
}