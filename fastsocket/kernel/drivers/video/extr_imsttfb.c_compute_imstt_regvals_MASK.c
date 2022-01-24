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
typedef  int /*<<< orphan*/  u_int ;
struct imstt_regvals {int dummy; } ;
struct imstt_par {scalar_t__ ramdac; } ;

/* Variables and functions */
 scalar_t__ IBM ; 
 struct imstt_regvals* FUNC0 (struct imstt_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct imstt_regvals* FUNC1 (struct imstt_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct imstt_regvals *
FUNC2 (struct imstt_par *par, u_int xres, u_int yres)
{
	if (par->ramdac == IBM)
		return FUNC0(par, xres, yres);
	else
		return FUNC1(par, xres, yres);
}