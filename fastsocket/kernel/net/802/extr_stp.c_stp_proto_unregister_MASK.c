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
struct stp_proto {size_t* group_address; } ;

/* Variables and functions */
 size_t GARP_ADDR_MIN ; 
 int /*<<< orphan*/ * garp_protos ; 
 scalar_t__ FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sap ; 
 scalar_t__ sap_registered ; 
 int /*<<< orphan*/  stp_proto ; 
 int /*<<< orphan*/  stp_proto_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(const struct stp_proto *proto)
{
	FUNC2(&stp_proto_mutex);
	if (FUNC0(proto->group_address))
		FUNC4(stp_proto, NULL);
	else
		FUNC4(garp_protos[proto->group_address[5] -
					       GARP_ADDR_MIN], NULL);
	FUNC5();

	if (--sap_registered == 0)
		FUNC1(sap);
	FUNC3(&stp_proto_mutex);
}