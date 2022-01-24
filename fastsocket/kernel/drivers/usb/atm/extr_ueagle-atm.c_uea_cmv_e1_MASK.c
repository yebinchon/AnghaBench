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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int function; int address; int /*<<< orphan*/  idx; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {TYPE_1__ e1; } ;
struct uea_softc {TYPE_2__ cmv_dsc; } ;
struct cmv_e1 {int bFunction; int /*<<< orphan*/  dwData; void* wOffsetAddress; int /*<<< orphan*/  dwSymbolicAddress; void* wIndex; int /*<<< orphan*/  bDirection; void* wPreamble; } ;
typedef  int /*<<< orphan*/  cmv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  E1_HOSTTOMODEM ; 
 int /*<<< orphan*/  E1_PREAMBLE ; 
 int /*<<< orphan*/  FUNC6 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_E1_SET_BLOCK ; 
 int /*<<< orphan*/  UEA_MPTX_START ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cmv_e1*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct uea_softc*) ; 

__attribute__((used)) static int FUNC14(struct uea_softc *sc,
		u8 function, u32 address, u16 offset, u32 data)
{
	struct cmv_e1 cmv;
	int ret;

	FUNC9(FUNC6(sc));
	FUNC12(FUNC6(sc), "Function : %d-%d, Address : %c%c%c%c, "
			"offset : 0x%04x, data : 0x%08x\n",
			FUNC1(function), FUNC0(function),
			FUNC2(address), FUNC3(address), FUNC4(address),
			FUNC5(address), offset, data);

	/* we send a request, but we expect a reply */
	sc->cmv_dsc.e1.function = function | 0x2;
	sc->cmv_dsc.e1.idx++;
	sc->cmv_dsc.e1.address = address;
	sc->cmv_dsc.e1.offset = offset;

	cmv.wPreamble = FUNC7(E1_PREAMBLE);
	cmv.bDirection = E1_HOSTTOMODEM;
	cmv.bFunction = function;
	cmv.wIndex = FUNC7(sc->cmv_dsc.e1.idx);
	FUNC8(address, &cmv.dwSymbolicAddress);
	cmv.wOffsetAddress = FUNC7(offset);
	FUNC8(data >> 16 | data << 16, &cmv.dwData);

	ret = FUNC11(sc, UEA_E1_SET_BLOCK, UEA_MPTX_START, sizeof(cmv), &cmv);
	if (ret < 0)
		return ret;
	ret = FUNC13(sc);
	FUNC10(FUNC6(sc));
	return ret;
}