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
struct SiS_Private {int SiS_DDC_Data; int /*<<< orphan*/  SiS_DDC_NData; int /*<<< orphan*/  SiS_DDC_Index; int /*<<< orphan*/  SiS_DDC_Port; } ;

/* Variables and functions */
 unsigned short FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 

__attribute__((used)) static unsigned short
FUNC4(struct SiS_Private *SiS_Pr, unsigned short tempax)
{
  unsigned short i,flag,temp;

  flag = 0x80;
  for(i = 0; i < 8; i++) {
    FUNC3(SiS_Pr);					/* SC->low */
    if(tempax & flag) {
      FUNC1(SiS_Pr->SiS_DDC_Port,
		      SiS_Pr->SiS_DDC_Index,
		      SiS_Pr->SiS_DDC_NData,
		      SiS_Pr->SiS_DDC_Data);			/* Write bit (1) to SD */
    } else {
      FUNC1(SiS_Pr->SiS_DDC_Port,
		      SiS_Pr->SiS_DDC_Index,
		      SiS_Pr->SiS_DDC_NData,
		      0x00);					/* Write bit (0) to SD */
    }
    FUNC2(SiS_Pr);					/* SC->high */
    flag >>= 1;
  }
  temp = FUNC0(SiS_Pr);					/* Check acknowledge */
  return temp;
}