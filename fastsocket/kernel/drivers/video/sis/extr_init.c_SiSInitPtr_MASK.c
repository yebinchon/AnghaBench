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
struct SiS_Private {scalar_t__ ChipType; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 
 scalar_t__ SIS_315H ; 

bool
FUNC2(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->ChipType < SIS_315H) {
#ifdef SIS300
      InitTo300Pointer(SiS_Pr);
#else
      return false;
#endif
   } else {
#ifdef SIS315H
      InitTo310Pointer(SiS_Pr);
#else
      return false;
#endif
   }
   return true;
}