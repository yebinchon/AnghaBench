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
struct SiS_Private {int SiS_VBType; int SiS_VBInfo; } ;

/* Variables and functions */
 int SetCRT2ToLCD ; 
 int SetCRT2ToLCDA ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int VB_NoLCD ; 
 int VB_SISVB ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex,
                unsigned short RefreshRateTableIndex)
{

   if(SiS_Pr->SiS_VBType & VB_SISVB) {

      if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
         FUNC1(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      } else {
	 if((SiS_Pr->SiS_VBType & VB_NoLCD) && (SiS_Pr->SiS_VBInfo & SetCRT2ToLCD)) {
	    /* Need LVDS Data for LCD on 301B-DH */
	    FUNC1(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
	 } else {
	    FUNC0(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
	 }
      }

   } else {

      FUNC1(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);

   }
}