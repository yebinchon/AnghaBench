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
struct moschip_port {int /*<<< orphan*/  DcrRegOffset; int /*<<< orphan*/  ControlRegOffset; int /*<<< orphan*/  SpRegOffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct moschip_port *mos7840_port)
{

	FUNC0("***************************************");
	FUNC0("SpRegOffset is %2x", mos7840_port->SpRegOffset);
	FUNC0("ControlRegOffset is %2x", mos7840_port->ControlRegOffset);
	FUNC0("DCRRegOffset is %2x", mos7840_port->DcrRegOffset);
	FUNC0("***************************************");

}