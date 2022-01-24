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
struct SiS_Private {int /*<<< orphan*/  SiS_DDC_NData; int /*<<< orphan*/  SiS_DDC_Index; int /*<<< orphan*/  SiS_DDC_Port; int /*<<< orphan*/  SiS_DDC_Data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 

__attribute__((used)) static void
FUNC3(struct SiS_Private *SiS_Pr, unsigned short yesno)
{
   FUNC2(SiS_Pr);
   if(yesno) {
      FUNC0(SiS_Pr->SiS_DDC_Port,
		      SiS_Pr->SiS_DDC_Index,
		      SiS_Pr->SiS_DDC_NData,
		      SiS_Pr->SiS_DDC_Data);
   } else {
      FUNC0(SiS_Pr->SiS_DDC_Port,
		      SiS_Pr->SiS_DDC_Index,
		      SiS_Pr->SiS_DDC_NData,
		      0);
   }
   FUNC1(SiS_Pr);
}