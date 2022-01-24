#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int high; int low; } ;
struct TYPE_10__ {int reg; } ;
struct TYPE_11__ {TYPE_1__ xr0; } ;
struct TYPE_12__ {TYPE_2__ XOP; } ;
struct TYPE_13__ {TYPE_3__ XOP_REGS; } ;
struct TYPE_14__ {TYPE_4__ m_DAAShadowRegs; scalar_t__ XILINXbase; } ;
typedef  TYPE_5__ IXJ ;
typedef  TYPE_6__ BYTES ;

/* Variables and functions */
 int ALISDAA_ID_BYTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_Enable_DAA ; 
 int /*<<< orphan*/  SCI_End ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 void* FUNC2 (scalar_t__) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static char FUNC5(IXJ *j)
{
	BYTES bytes;

	if (!FUNC1(j))
		return 0;

	bytes.high = 0x38;
	bytes.low = 0x00;
	FUNC3(bytes.high, j->XILINXbase + 0x03);
	FUNC3(bytes.low, j->XILINXbase + 0x02);

	if (!FUNC0(j, SCI_Enable_DAA))
		return 0;

	bytes.high = FUNC2(j->XILINXbase + 0x03);
	bytes.low = FUNC2(j->XILINXbase + 0x02);
	if (bytes.low != ALISDAA_ID_BYTE) {
		if (ixjdebug & 0x0001)
			FUNC4("Cannot read DAA ID Byte high = %d low = %d\n", bytes.high, bytes.low);
		return 0;
	}
	if (!FUNC0(j, SCI_Enable_DAA))
		return 0;
	if (!FUNC0(j, SCI_End))
		return 0;

	bytes.high = FUNC2(j->XILINXbase + 0x03);
	bytes.low = FUNC2(j->XILINXbase + 0x02);

	j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.reg = bytes.high;

	return 1;
}