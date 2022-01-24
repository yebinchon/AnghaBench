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
struct SiS_Private {int SiS_DDC_DeviceAddr; int SiS_DDC_Index; int SiS_DDC_Data; int SiS_DDC_Clk; unsigned short SiS_DDC_ReadAddr; int /*<<< orphan*/  SiS_ChrontelInit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (struct SiS_Private*,int) ; 
 int /*<<< orphan*/  SiS_I2CDELAYSHORT ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 

unsigned short
FUNC3(struct SiS_Private *SiS_Pr, unsigned short tempbx)
{
  unsigned short result;

  SiS_Pr->SiS_DDC_DeviceAddr = 0xEA;		/* DAB */

  FUNC0(SiS_Pr,SiS_I2CDELAYSHORT);

  if(!(SiS_Pr->SiS_ChrontelInit)) {
     SiS_Pr->SiS_DDC_Index = 0x11;		/* Bit 0 = SC;  Bit 1 = SD */
     SiS_Pr->SiS_DDC_Data  = 0x02;		/* Bitmask in IndexReg for Data */
     SiS_Pr->SiS_DDC_Clk   = 0x01;		/* Bitmask in IndexReg for Clk */
     FUNC2(SiS_Pr);
  }

  SiS_Pr->SiS_DDC_ReadAddr = tempbx;

  if( ((result = FUNC1(SiS_Pr,0x80)) == 0xFFFF) &&
      (!SiS_Pr->SiS_ChrontelInit) ) {

     SiS_Pr->SiS_DDC_Index = 0x0a;
     SiS_Pr->SiS_DDC_Data  = 0x80;
     SiS_Pr->SiS_DDC_Clk   = 0x40;
     FUNC2(SiS_Pr);

     result = FUNC1(SiS_Pr,0x80);
  }
  return result;
}