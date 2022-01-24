#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inet_port_params {int port; int type; int /*<<< orphan*/  index; int /*<<< orphan*/  proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
struct inet_port {int (* create ) (struct inet_port*,struct inet_port_params*) ;struct inet_port* dns_addr; TYPE_1__ tport; void* deactivate; void* activate; int /*<<< orphan*/  proto; int /*<<< orphan*/  socks; } ;

/* Variables and functions */
#define  InetAddressType_dns 131 
#define  InetAddressType_ipv4 130 
#define  InetAddressType_ipv6 129 
#define  InetAddressType_ipv6z 128 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_NOERROR ; 
 int SNMP_ERR_NO_CREATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* dns_activate ; 
 int FUNC1 (struct inet_port*,struct inet_port_params*) ; 
 void* dns_deactivate ; 
 int /*<<< orphan*/  FUNC2 (struct inet_port*) ; 
 void* ipv4_activate ; 
 int FUNC3 (struct inet_port*,struct inet_port_params*) ; 
 void* ipv4_deactivate ; 
 void* ipv6_activate ; 
 int FUNC4 (struct inet_port*,struct inet_port_params*) ; 
 void* ipv6_deactivate ; 
 int FUNC5 (struct inet_port*,struct inet_port_params*) ; 
 struct inet_port* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inet_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_trans ; 
 int FUNC8 (struct inet_port*,struct inet_port_params*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(struct inet_port_params *params, struct inet_port **pp)
{
	int err = SNMP_ERR_NOERROR;
	struct inet_port *port = NULL;

	if (params->port > 0xffff) {
		err = SNMP_ERR_NO_CREATION;
		goto fail;
	}

	if ((port = FUNC6(sizeof(*port))) == NULL) {
		err =  SNMP_ERR_GENERR;
		goto fail;
	}
	FUNC7(port, 0, sizeof(*port));
	FUNC0(&port->socks);

	port->proto = params->proto;
	port->tport.index = params->index;

	switch (params->type) {

	  case InetAddressType_ipv4:
		port->create = ipv4_create;
		port->activate = ipv4_activate;
		port->deactivate = ipv4_deactivate;
		break;

	  case InetAddressType_ipv6:
		port->create = ipv6_create;
		port->activate = ipv6_activate;
		port->deactivate = ipv6_deactivate;
		break;

	  case InetAddressType_ipv6z:
		port->create = ipv6z_create;
		port->activate = ipv6_activate;
		port->deactivate = ipv6_deactivate;
		break;

	  case InetAddressType_dns:
		port->create = dns_create;
		port->activate = dns_activate;
		port->deactivate = dns_deactivate;
		break;

	  default:
		err = SNMP_ERR_NO_CREATION;
		goto fail;
	}

	if ((err = port->create(port, params)) != SNMP_ERR_NOERROR)
		goto fail;

	*pp = port;
	FUNC9(my_trans, &port->tport);
	return (err);

fail:
	FUNC2(port->dns_addr);
	FUNC2(port);
	return (err);
}