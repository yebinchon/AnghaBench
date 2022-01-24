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
typedef  int u32 ;
struct aaci_runtime {int cr; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AACI_IE ; 
 scalar_t__ AACI_TXCR ; 
 int CR_EN ; 
 int IE_TXIE ; 
 int IE_URIE ; 
 int /*<<< orphan*/  FUNC0 (struct aaci_runtime*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct aaci_runtime *aacirun)
{
	u32 ie;

	FUNC0(aacirun);
	aacirun->cr |= CR_EN;

	ie = FUNC1(aacirun->base + AACI_IE);
	ie |= IE_URIE | IE_TXIE;
	FUNC2(ie, aacirun->base + AACI_IE);
	FUNC2(aacirun->cr, aacirun->base + AACI_TXCR);
}