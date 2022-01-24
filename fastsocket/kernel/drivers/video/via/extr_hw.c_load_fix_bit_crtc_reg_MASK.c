#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {scalar_t__ gfx_chip_name; scalar_t__ gfx_chip_revision; } ;

/* Variables and functions */
 scalar_t__ BIT0 ; 
 scalar_t__ BIT1 ; 
 scalar_t__ BIT2 ; 
 scalar_t__ BIT3 ; 
 scalar_t__ BIT4 ; 
 scalar_t__ BIT6 ; 
 scalar_t__ BIT7 ; 
 scalar_t__ CLE266_REVISION_AX ; 
 int /*<<< orphan*/  CR03 ; 
 int /*<<< orphan*/  CR07 ; 
 int /*<<< orphan*/  CR08 ; 
 int /*<<< orphan*/  CR09 ; 
 int /*<<< orphan*/  CR14 ; 
 int /*<<< orphan*/  CR17 ; 
 int /*<<< orphan*/  CR18 ; 
 int /*<<< orphan*/  CR33 ; 
 int /*<<< orphan*/  CR35 ; 
 int /*<<< orphan*/  SR1A ; 
 scalar_t__ UNICHROME_CLE266 ; 
 scalar_t__ UNICHROME_K800 ; 
 scalar_t__ UNICHROME_K8M890 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* viaparinfo ; 

__attribute__((used)) static void FUNC2(void)
{
	/* always set to 1 */
	FUNC1(CR03, VIACR, 0x80, BIT7);
	/* line compare should set all bits = 1 (extend modes) */
	FUNC0(CR18, VIACR, 0xff);
	/* line compare should set all bits = 1 (extend modes) */
	FUNC1(CR07, VIACR, 0x10, BIT4);
	/* line compare should set all bits = 1 (extend modes) */
	FUNC1(CR09, VIACR, 0x40, BIT6);
	/* line compare should set all bits = 1 (extend modes) */
	FUNC1(CR35, VIACR, 0x10, BIT4);
	/* line compare should set all bits = 1 (extend modes) */
	FUNC1(CR33, VIACR, 0x06, BIT0 + BIT1 + BIT2);
	/*viafb_write_reg_mask(CR32, VIACR, 0x01, BIT0); */
	/* extend mode always set to e3h */
	FUNC0(CR17, VIACR, 0xe3);
	/* extend mode always set to 0h */
	FUNC0(CR08, VIACR, 0x00);
	/* extend mode always set to 0h */
	FUNC0(CR14, VIACR, 0x00);

	/* If K8M800, enable Prefetch Mode. */
	if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_K800)
		|| (viaparinfo->chip_info->gfx_chip_name == UNICHROME_K8M890))
		FUNC1(CR33, VIACR, 0x08, BIT3);
	if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
	    && (viaparinfo->chip_info->gfx_chip_revision == CLE266_REVISION_AX))
		FUNC1(SR1A, VIASR, 0x02, BIT1);

}