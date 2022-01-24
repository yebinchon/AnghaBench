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
struct inet_port {struct inet_port* dns_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct tport*) ; 

__attribute__((used)) static void
FUNC3(struct tport *tp)
{
	struct inet_port *port = (struct inet_port *)tp;

	FUNC0(port);

	FUNC2(tp);

	FUNC1(port->dns_addr);
	FUNC1(port);
}