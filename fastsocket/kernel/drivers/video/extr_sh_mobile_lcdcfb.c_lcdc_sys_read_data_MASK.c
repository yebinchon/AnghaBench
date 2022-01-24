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
struct sh_mobile_lcdc_chan {int /*<<< orphan*/  lcdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  _LDDRAR ; 
 int /*<<< orphan*/  _LDDRDR ; 
 int /*<<< orphan*/  _LDSR ; 
 scalar_t__ FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static unsigned long FUNC5(void *handle)
{
	struct sh_mobile_lcdc_chan *ch = handle;

	FUNC3(ch->lcdc, _LDDRDR, 0x01000000);
	FUNC2(ch->lcdc, _LDSR, 2, 0);
	FUNC3(ch->lcdc, _LDDRAR, 1 | (FUNC0(ch) ? 2 : 0));
	FUNC4(1);
	FUNC2(ch->lcdc, _LDSR, 2, 0);

	return FUNC1(ch->lcdc, _LDDRDR) & 0x3ffff;
}