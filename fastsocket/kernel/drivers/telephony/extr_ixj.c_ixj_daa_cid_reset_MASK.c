#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int high; int low; } ;
struct TYPE_7__ {scalar_t__ XILINXbase; } ;
typedef  TYPE_1__ IXJ ;
typedef  TYPE_2__ BYTES ;

/* Variables and functions */
 int ALISDAA_CALLERID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_Enable_DAA ; 
 int /*<<< orphan*/  SCI_End ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int ixjdebug ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(IXJ *j)
{
	int i;
	BYTES bytes;

	if (ixjdebug & 0x0002)
		FUNC4("DAA Clearing CID ram\n");

	if (!FUNC1(j))
		return 0;

	bytes.high = 0x58;
	bytes.low = 0x00;
	FUNC3(bytes.high, j->XILINXbase + 0x03);
	FUNC3(bytes.low, j->XILINXbase + 0x02);

	if (!FUNC0(j, SCI_Enable_DAA))
		return 0;

	if (!FUNC2(j))
		return 0;

	for (i = 0; i < ALISDAA_CALLERID_SIZE - 1; i += 2) {
		bytes.high = bytes.low = 0x00;
		FUNC3(bytes.high, j->XILINXbase + 0x03);

		if (i < ALISDAA_CALLERID_SIZE - 1)
			FUNC3(bytes.low, j->XILINXbase + 0x02);

		if (!FUNC0(j, SCI_Enable_DAA))
			return 0;

		if (!FUNC2(j))
			return 0;

	}

	if (!FUNC0(j, SCI_End))
		return 0;

	if (ixjdebug & 0x0002)
		FUNC4("DAA CID ram cleared\n");

	return 1;
}