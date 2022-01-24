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
struct SiS_Private {scalar_t__ ChipType; int SiS_VBType; int SiS_LCDInfo; int /*<<< orphan*/  SiS_Part4Port; } ;

/* Variables and functions */
 int LCDDualLink ; 
 scalar_t__ SIS_315H ; 
 scalar_t__ FUNC0 (struct SiS_Private*) ; 
 scalar_t__ FUNC1 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int VB_SISDUALLINK ; 
 int VB_SISEMI ; 

__attribute__((used)) static void
FUNC5(struct SiS_Private *SiS_Pr)
{
  if(SiS_Pr->ChipType >= SIS_315H) {
     if(SiS_Pr->SiS_VBType & VB_SISDUALLINK) {
	if((FUNC0(SiS_Pr)) ||
	   (FUNC1(SiS_Pr))) {
	   if(SiS_Pr->SiS_LCDInfo & LCDDualLink) {
	      FUNC4(SiS_Pr->SiS_Part4Port,0x27,0x2c);
	   } else {
	      FUNC3(SiS_Pr->SiS_Part4Port,0x27,~0x20);
	   }
	}
     }
  }
  if(SiS_Pr->SiS_VBType & VB_SISEMI) {
     FUNC2(SiS_Pr->SiS_Part4Port,0x2a,0x00);
#ifdef SET_EMI
     SiS_SetRegAND(SiS_Pr->SiS_Part4Port,0x30,0x0c);
#endif
     FUNC2(SiS_Pr->SiS_Part4Port,0x34,0x10);
  }
}