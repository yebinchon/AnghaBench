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
 scalar_t__ IS_SIS65x ; 
 scalar_t__ SIS_661 ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr)
{
   if((IS_SIS65x) || (SiS_Pr->ChipType >= SIS_661)) {
      FUNC0(SiS_Pr);
      FUNC1(SiS_Pr);
   }
}