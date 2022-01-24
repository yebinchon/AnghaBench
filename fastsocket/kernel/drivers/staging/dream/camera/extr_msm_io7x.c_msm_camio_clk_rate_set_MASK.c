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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk* camio_vfe_clk ; 
 int /*<<< orphan*/  FUNC1 (struct clk*,int) ; 

void FUNC2(int rate)
{
	struct clk *clk = camio_vfe_clk;

	if (clk != FUNC0(-ENOENT))
		FUNC1(clk, rate);
}