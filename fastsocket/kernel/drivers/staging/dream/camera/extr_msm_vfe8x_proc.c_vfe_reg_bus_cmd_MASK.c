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
typedef  int /*<<< orphan*/  uint32_t ;
struct vfe_buscmd {scalar_t__ statsPingpongReload; scalar_t__ busPingpongReload; scalar_t__ stripeReload; } ;
struct vfe_bus_cmd_data {scalar_t__ stripeReload; scalar_t__ statsPingpongReload; scalar_t__ busPingpongReload; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ VFE_BUS_CMD ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC1 (struct vfe_buscmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vfe_bus_cmd_data *in)
{
	struct vfe_buscmd cmd;
	FUNC1(&cmd, 0, sizeof(cmd));

	cmd.stripeReload        = in->stripeReload;
	cmd.busPingpongReload   = in->busPingpongReload;
	cmd.statsPingpongReload = in->statsPingpongReload;

	FUNC2(*((uint32_t *)&cmd), ctrl->vfebase + VFE_BUS_CMD);

	FUNC0("bus command = 0x%x\n", (*((uint32_t *)&cmd)));

	/* this is needed, as the control bits are pulse based.
	 * Don't want to reload bus pingpong again. */
	in->busPingpongReload = 0;
	in->statsPingpongReload = 0;
	in->stripeReload = 0;
}