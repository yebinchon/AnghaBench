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
struct SiS_Private {unsigned short SiS_DDC_Data; int /*<<< orphan*/  SiS_DDC_Index; int /*<<< orphan*/  SiS_DDC_Port; int /*<<< orphan*/  SiS_DDC_NData; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 

__attribute__((used)) static unsigned short
FUNC4(struct SiS_Private *SiS_Pr)
{
  unsigned short tempah;

  FUNC3(SiS_Pr);				           /* (SC->low) */
  FUNC1(SiS_Pr->SiS_DDC_Port,
		  SiS_Pr->SiS_DDC_Index,
		  SiS_Pr->SiS_DDC_NData,
		  SiS_Pr->SiS_DDC_Data);			   /* (SD->high) */
  FUNC2(SiS_Pr);				           /* SC->high = clock impulse for ack */
  tempah = FUNC0(SiS_Pr->SiS_DDC_Port,SiS_Pr->SiS_DDC_Index); /* Read SD */
  FUNC3(SiS_Pr);				           /* SC->low = end of clock impulse */
  if(tempah & SiS_Pr->SiS_DDC_Data) return 1;			   /* Ack OK if bit = 0 */
  return 0;
}