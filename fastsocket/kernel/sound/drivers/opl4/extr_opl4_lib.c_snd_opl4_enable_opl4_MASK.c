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
struct snd_opl4 {scalar_t__ fm_port; } ;

/* Variables and functions */
 int OPL3_OPL3_ENABLE ; 
 int OPL3_OPL4_ENABLE ; 
 int OPL3_REG_MODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct snd_opl4 *opl4)
{
	FUNC1(OPL3_REG_MODE, opl4->fm_port + 2);
	FUNC0(opl4->fm_port);
	FUNC0(opl4->fm_port);
	FUNC1(OPL3_OPL3_ENABLE | OPL3_OPL4_ENABLE, opl4->fm_port + 3);
	FUNC0(opl4->fm_port);
	FUNC0(opl4->fm_port);
}