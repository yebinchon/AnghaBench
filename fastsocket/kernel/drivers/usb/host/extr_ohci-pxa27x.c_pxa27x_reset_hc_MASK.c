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
typedef  int uint32_t ;
struct pxa27x_ohci {scalar_t__ mmio_base; } ;

/* Variables and functions */
 scalar_t__ UHCHR ; 
 int UHCHR_FHR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct pxa27x_ohci *ohci)
{
	uint32_t uhchr = FUNC0(ohci->mmio_base + UHCHR);

	FUNC1(uhchr | UHCHR_FHR, ohci->mmio_base + UHCHR);
	FUNC2(11);
	FUNC1(uhchr & ~UHCHR_FHR, ohci->mmio_base + UHCHR);
}