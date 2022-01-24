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
struct mb862xxfb_par {int dummy; } ;
struct fb_info {struct mb862xxfb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int GC_CPM_CUTC ; 
 unsigned int GC_CUY1_CUX1 ; 
 unsigned int GC_DCM0 ; 
 unsigned int GC_DCM1 ; 
 unsigned int GC_L0DY_L0DX ; 
 unsigned int GC_L0WH_L0WW ; 
 struct fb_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  disp ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				       struct device_attribute *attr, char *buf)
{
	struct fb_info *fbi = FUNC0(dev);
	struct mb862xxfb_par *par = fbi->par;
	char *ptr = buf;
	unsigned int reg;

	for (reg = GC_DCM0; reg <= GC_L0DY_L0DX; reg += 4)
		ptr += FUNC2(ptr, "%08x = %08x\n",
			       reg, FUNC1(disp, reg));

	for (reg = GC_CPM_CUTC; reg <= GC_CUY1_CUX1; reg += 4)
		ptr += FUNC2(ptr, "%08x = %08x\n",
			       reg, FUNC1(disp, reg));

	for (reg = GC_DCM1; reg <= GC_L0WH_L0WW; reg += 4)
		ptr += FUNC2(ptr, "%08x = %08x\n",
			       reg, FUNC1(disp, reg));

	return ptr - buf;
}