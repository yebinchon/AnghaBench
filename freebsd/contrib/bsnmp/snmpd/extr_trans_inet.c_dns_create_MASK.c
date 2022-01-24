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
struct inet_port_params {int addr_len; int /*<<< orphan*/  port; int /*<<< orphan*/ * addr; } ;
struct inet_port {char* dns_addr; int /*<<< orphan*/  dns_port; } ;

/* Variables and functions */
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct inet_port *port, struct inet_port_params *params)
{
	if (params->addr_len > 64)
		return (SNMP_ERR_INCONS_VALUE);

	if (FUNC2(params->addr, params->addr_len) !=
	    params->addr_len)
		return (SNMP_ERR_INCONS_VALUE);

	if ((port->dns_addr = FUNC1(params->addr,
	    params->addr_len + 1)) == NULL)
		return (SNMP_ERR_GENERR);

	port->dns_addr[params->addr_len] = '\0';
	params->addr = NULL;

	port->dns_port = FUNC0(params->port);

	return (SNMP_ERR_NOERROR);
}