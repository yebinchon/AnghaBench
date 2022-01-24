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
struct pm3_par {int dummy; } ;
struct fb_info {struct pm3_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM3FilterMode ; 
 int /*<<< orphan*/  PM3FilterModeSync ; 
 int /*<<< orphan*/  PM3OutFIFOWords ; 
 int /*<<< orphan*/  PM3OutputFifo ; 
 int /*<<< orphan*/  PM3Sync ; 
 scalar_t__ PM3Sync_Tag ; 
 scalar_t__ FUNC0 (struct pm3_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pm3_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fb_info *info)
{
	struct pm3_par *par = info->par;

	FUNC1(par, 2);
	FUNC2(par, PM3FilterMode, PM3FilterModeSync);
	FUNC2(par, PM3Sync, 0);
	FUNC4();
	do {
		while ((FUNC0(par, PM3OutFIFOWords)) == 0)
			FUNC3();
	} while ((FUNC0(par, PM3OutputFifo)) != PM3Sync_Tag);

	return 0;
}