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
struct SiS_Private {unsigned short SiS_CRT1Mode; int SiS_SetFlag; int SiS_VBInfo; int ChipType; scalar_t__ SiS_flag_clearbuffer; int /*<<< orphan*/  SiS_P3cc; int /*<<< orphan*/  SiS_P3c2; int /*<<< orphan*/  SiS_P3c4; int /*<<< orphan*/  SiS_VBType; scalar_t__ SiS_SelectCRT2Rate; } ;

/* Variables and functions */
 int LowModeTests ; 
 int ProgrammingCRT2 ; 
#define  SIS_300 131 
#define  SIS_540 130 
#define  SIS_630 129 
#define  SIS_730 128 
 int SetCRT2ToLCDA ; 
 int SetInSlaveMode ; 
 int SetSimuScanMode ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 
 unsigned short FUNC4 (struct SiS_Private*,unsigned short,unsigned short) ; 
 unsigned short FUNC5 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC9 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC10 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC12 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC13 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC14 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC15 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC16 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC17 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC18 (struct SiS_Private*,unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC19 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC20 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC21 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC25 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC26 (struct SiS_Private*) ; 
 int SwitchCRT2 ; 
 int XGI_20 ; 
 int XGI_40 ; 
 int /*<<< orphan*/  X_PROBED ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC28(struct SiS_Private *SiS_Pr, unsigned short ModeNo, unsigned short ModeIdIndex)
{
   unsigned short StandTableIndex, RefreshRateTableIndex;

   SiS_Pr->SiS_CRT1Mode = ModeNo;

   StandTableIndex = FUNC4(SiS_Pr, ModeNo, ModeIdIndex);

   if(SiS_Pr->SiS_SetFlag & LowModeTests) {
      if(SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SwitchCRT2)) {
         FUNC2(SiS_Pr);
      }
   }

   FUNC9(SiS_Pr);

   FUNC24(SiS_Pr, StandTableIndex);
   FUNC21(SiS_Pr, StandTableIndex);
   FUNC19(SiS_Pr, StandTableIndex);
   FUNC10(SiS_Pr, StandTableIndex);
   FUNC20(SiS_Pr, StandTableIndex);
   FUNC1(SiS_Pr, ModeNo);
   FUNC8(SiS_Pr);

   SiS_Pr->SiS_SelectCRT2Rate = 0;
   SiS_Pr->SiS_SetFlag &= (~ProgrammingCRT2);

#ifdef SIS_XORG_XF86
   xf86DrvMsgVerb(0, X_PROBED, 4, "(init: VBType=0x%04x, VBInfo=0x%04x)\n",
                    SiS_Pr->SiS_VBType, SiS_Pr->SiS_VBInfo);
#endif

   if(SiS_Pr->SiS_VBInfo & SetSimuScanMode) {
      if(SiS_Pr->SiS_VBInfo & SetInSlaveMode) {
         SiS_Pr->SiS_SetFlag |= ProgrammingCRT2;
      }
   }

   if(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA) {
      SiS_Pr->SiS_SetFlag |= ProgrammingCRT2;
   }

   RefreshRateTableIndex = FUNC5(SiS_Pr, ModeNo, ModeIdIndex);

   if(!(SiS_Pr->SiS_VBInfo & SetCRT2ToLCDA)) {
      SiS_Pr->SiS_SetFlag &= ~ProgrammingCRT2;
   }

   if(RefreshRateTableIndex != 0xFFFF) {
      FUNC17(SiS_Pr, RefreshRateTableIndex);
      FUNC11(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      FUNC16(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
      FUNC18(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);
   }

   switch(SiS_Pr->ChipType) {
#ifdef SIS300
   case SIS_300:
      SiS_SetCRT1FIFO_300(SiS_Pr, ModeNo, RefreshRateTableIndex);
      break;
   case SIS_540:
   case SIS_630:
   case SIS_730:
      SiS_SetCRT1FIFO_630(SiS_Pr, ModeNo, RefreshRateTableIndex);
      break;
#endif
   default:
#ifdef SIS315H
      if(SiS_Pr->ChipType == XGI_20) {
         unsigned char sr2b = 0, sr2c = 0;
         switch(ModeNo) {
	 case 0x00:
	 case 0x01: sr2b = 0x4e; sr2c = 0xe9; break;
	 case 0x04:
	 case 0x05:
	 case 0x0d: sr2b = 0x1b; sr2c = 0xe3; break;
	 }
	 if(sr2b) {
            SiS_SetReg(SiS_Pr->SiS_P3c4,0x2b,sr2b);
	    SiS_SetReg(SiS_Pr->SiS_P3c4,0x2c,sr2c);
	    SiS_SetRegByte(SiS_Pr->SiS_P3c2,(SiS_GetRegByte(SiS_Pr->SiS_P3cc) | 0x0c));
	 }
      }
      SiS_SetCRT1FIFO_310(SiS_Pr, ModeNo, ModeIdIndex);
#endif
      break;
   }

   FUNC15(SiS_Pr, ModeNo, ModeIdIndex, RefreshRateTableIndex);

#ifdef SIS315H
   if(SiS_Pr->ChipType == XGI_40) {
      SiS_SetupDualChip(SiS_Pr);
   }
#endif

   FUNC7(SiS_Pr, ModeNo, ModeIdIndex);

#ifdef SIS_LINUX_KERNEL
   if(SiS_Pr->SiS_flag_clearbuffer) {
      SiS_ClearBuffer(SiS_Pr, ModeNo);
   }
#endif

   if(!(SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SwitchCRT2 | SetCRT2ToLCDA))) {
      FUNC26(SiS_Pr);
      FUNC3(SiS_Pr);
   }
}