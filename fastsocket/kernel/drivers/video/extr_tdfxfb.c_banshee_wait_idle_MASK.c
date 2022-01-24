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
struct tdfx_par {int dummy; } ;
struct fb_info {struct tdfx_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_3D ; 
 int /*<<< orphan*/  COMMAND_3D_NOP ; 
 int /*<<< orphan*/  STATUS ; 
 int STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct tdfx_par*,int) ; 
 int FUNC1 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tdfx_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	struct tdfx_par *par = info->par;
	int i = 0;

	FUNC0(par, 1);
	FUNC2(par, COMMAND_3D, COMMAND_3D_NOP);

	do {
		if ((FUNC1(par, STATUS) & STATUS_BUSY) == 0)
			i++;
	} while (i < 3);

	return 0;
}