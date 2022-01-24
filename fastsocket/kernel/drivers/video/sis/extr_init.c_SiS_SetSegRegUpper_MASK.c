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
struct SiS_Private {int /*<<< orphan*/  SiS_P3cd; int /*<<< orphan*/  SiS_P3cb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void
FUNC2(struct SiS_Private *SiS_Pr, unsigned short value)
{
   unsigned short temp;

   value &= 0x00ff;
   temp = FUNC0(SiS_Pr->SiS_P3cb) & 0x0f;
   temp |= (value & 0xf0);
   FUNC1(SiS_Pr->SiS_P3cb, temp);
   temp = FUNC0(SiS_Pr->SiS_P3cd) & 0x0f;
   temp |= (value << 4);
   FUNC1(SiS_Pr->SiS_P3cd, temp);
}