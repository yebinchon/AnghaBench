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
struct udp_port {int /*<<< orphan*/  input; } ;
struct tport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tport*) ; 

__attribute__((used)) static void
FUNC3(struct tport *tp)
{
	struct udp_port *port = (struct udp_port *)tp;

	FUNC1(&port->input);
	FUNC2(tp);
	FUNC0(port);
}