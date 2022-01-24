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
struct SiS_Private {unsigned short SiS_DDC_Clk; int /*<<< orphan*/  SiS_DDC_Index; int /*<<< orphan*/  SiS_DDC_Port; int /*<<< orphan*/  SiS_DDC_NClk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SiS_I2CDELAYSHORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  X_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static unsigned short
FUNC4(struct SiS_Private *SiS_Pr)
{
  unsigned short temp, watchdog=1000;

  FUNC2(SiS_Pr->SiS_DDC_Port,
		  SiS_Pr->SiS_DDC_Index,
		  SiS_Pr->SiS_DDC_NClk,
		  SiS_Pr->SiS_DDC_Clk);  			/* SetSCLKHigh()  */
  do {
    temp = FUNC1(SiS_Pr->SiS_DDC_Port,SiS_Pr->SiS_DDC_Index);
  } while((!(temp & SiS_Pr->SiS_DDC_Clk)) && --watchdog);
  if (!watchdog) {
#ifdef SIS_XORG_XF86
#ifdef TWDEBUG
        xf86DrvMsg(0, X_INFO, "SetClkHigh failed\n");
#endif
#endif
  	return 0xFFFF;
  }
  FUNC0(SiS_Pr,SiS_I2CDELAYSHORT);
  return 0;
}