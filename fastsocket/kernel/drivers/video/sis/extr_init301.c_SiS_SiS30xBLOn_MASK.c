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
struct SiS_Private {int /*<<< orphan*/  SiS_Part4Port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 

void
FUNC4(struct SiS_Private *SiS_Pr)
{
  /* Switch on LCD backlight on SiS30xLV */
  FUNC0(SiS_Pr,0xff00);
  if(!(FUNC1(SiS_Pr->SiS_Part4Port,0x26) & 0x02)) {
     FUNC2(SiS_Pr->SiS_Part4Port,0x26,0x02);
     FUNC3(SiS_Pr);
  }
  if(!(FUNC1(SiS_Pr->SiS_Part4Port,0x26) & 0x01)) {
     FUNC2(SiS_Pr->SiS_Part4Port,0x26,0x01);
  }
}