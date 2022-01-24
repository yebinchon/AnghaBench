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
struct port_sock {int /*<<< orphan*/  input; } ;
struct inet_port {int /*<<< orphan*/  row_status; int /*<<< orphan*/  socks; } ;

/* Variables and functions */
 int /*<<< orphan*/  RowStatus_notInService ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct port_sock* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct port_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct port_sock*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct inet_port *port)
{
	while (!FUNC0(&port->socks)) {
		struct port_sock *sock = FUNC1(&port->socks);
		FUNC2(&port->socks, sock, link);
		FUNC4(&sock->input);
		FUNC3(sock);
	}
	port->row_status = RowStatus_notInService;
}