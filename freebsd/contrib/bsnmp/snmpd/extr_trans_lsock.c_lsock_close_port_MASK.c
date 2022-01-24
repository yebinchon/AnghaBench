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
struct tport {int dummy; } ;
struct lsock_port {scalar_t__ str_sock; struct lsock_port* name; int /*<<< orphan*/  peers; int /*<<< orphan*/ * str_id; } ;
struct lsock_peer {int dummy; } ;

/* Variables and functions */
 struct lsock_peer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lsock_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct lsock_peer*) ; 
 int /*<<< orphan*/  FUNC5 (struct lsock_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tport*) ; 

__attribute__((used)) static void
FUNC7(struct tport *tp)
{
	struct lsock_port *port = (struct lsock_port *)tp;
	struct lsock_peer *peer;

	if (port->str_id != NULL)
		FUNC2(port->str_id);
	if (port->str_sock >= 0)
		(void)FUNC1(port->str_sock);
	(void)FUNC5(port->name);

	FUNC6(tp);

	while ((peer = FUNC0(&port->peers)) != NULL)
		FUNC4(peer);

	FUNC3(port->name);
	FUNC3(port);
}