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
 int /*<<< orphan*/  _LDDWAR ; 
 int /*<<< orphan*/  _LDDWD0R ; 
 int /*<<< orphan*/  _LDSR ; 
 scalar_t__ FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *handle, unsigned long data)
{
	struct sh_mobile_lcdc_chan *ch = handle;

	FUNC2(ch->lcdc, _LDDWD0R, data | 0x11000000);
	FUNC1(ch->lcdc, _LDSR, 2, 0);
	FUNC2(ch->lcdc, _LDDWAR, 1 | (FUNC0(ch) ? 2 : 0));
	FUNC1(ch->lcdc, _LDSR, 2, 0);
}