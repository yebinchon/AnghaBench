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
struct savagefb_par {scalar_t__ chip; } ;
struct savage_reg {unsigned char SR08; unsigned char CR31; unsigned char CR32; unsigned char CR34; unsigned char CR36; unsigned char CR3A; unsigned char CR40; unsigned char CR42; unsigned char CR45; unsigned char CR50; unsigned char CR51; unsigned char CR53; unsigned char CR58; unsigned char CR60; unsigned char CR66; unsigned char CR67; unsigned char CR68; unsigned char CR69; unsigned char CR6F; unsigned char CR33; unsigned char CR86; unsigned char CR88; unsigned char CR90; unsigned char CR91; unsigned char CRB0; unsigned char CR3B; unsigned char CR3C; unsigned char CR43; unsigned char CR5D; unsigned char CR5E; unsigned char CR65; unsigned char SR0E; unsigned char SR0F; unsigned char SR10; unsigned char SR11; unsigned char SR12; unsigned char SR13; unsigned char SR29; unsigned char SR15; unsigned char SR30; unsigned char SR18; unsigned char* SR54; int /*<<< orphan*/  MMPR3; int /*<<< orphan*/  MMPR2; int /*<<< orphan*/  MMPR1; int /*<<< orphan*/  MMPR0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_CONTROL_REG ; 
 int /*<<< orphan*/  MISC_TIMEOUT_REG ; 
 int /*<<< orphan*/  MIU_CONTROL_REG ; 
 scalar_t__ S3_SAVAGE_MX ; 
 int /*<<< orphan*/  STREAMS_TIMEOUT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct savagefb_par*) ; 
 unsigned char FUNC1 (int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char,struct savagefb_par*) ; 

__attribute__((used)) static void FUNC4(struct savagefb_par *par,
				struct savage_reg *reg)
{
	unsigned char cr3a, cr53, cr66;

	FUNC2(0x3d4, 0x4838, par);
	FUNC2(0x3d4, 0xa039, par);
	FUNC2(0x3c4, 0x0608, par);

	FUNC3(0x3d4, 0x66, par);
	cr66 = FUNC1(0x3d5, par);
	FUNC3(0x3d5, cr66 | 0x80, par);
	FUNC3(0x3d4, 0x3a, par);
	cr3a = FUNC1(0x3d5, par);
	FUNC3(0x3d5, cr3a | 0x80, par);
	FUNC3(0x3d4, 0x53, par);
	cr53 = FUNC1(0x3d5, par);
	FUNC3(0x3d5, cr53 & 0x7f, par);

	FUNC3(0x3d4, 0x66, par);
	FUNC3(0x3d5, cr66, par);
	FUNC3(0x3d4, 0x3a, par);
	FUNC3(0x3d5, cr3a, par);

	FUNC3(0x3d4, 0x66, par);
	FUNC3(0x3d5, cr66, par);
	FUNC3(0x3d4, 0x3a, par);
	FUNC3(0x3d5, cr3a, par);

	/* unlock extended seq regs */
	FUNC3(0x3c4, 0x08, par);
	FUNC3(0x3c5, reg->SR08, par);
	FUNC3(0x3c5, 0x06, par);

	/* now restore all the extended regs we need */
	FUNC3(0x3d4, 0x31, par);
	FUNC3(0x3d5, reg->CR31, par);
	FUNC3(0x3d4, 0x32, par);
	FUNC3(0x3d5, reg->CR32, par);
	FUNC3(0x3d4, 0x34, par);
	FUNC3(0x3d5, reg->CR34, par);
	FUNC3(0x3d4, 0x36, par);
	FUNC3(0x3d5,reg->CR36, par);
	FUNC3(0x3d4, 0x3a, par);
	FUNC3(0x3d5, reg->CR3A, par);
	FUNC3(0x3d4, 0x40, par);
	FUNC3(0x3d5, reg->CR40, par);
	FUNC3(0x3d4, 0x42, par);
	FUNC3(0x3d5, reg->CR42, par);
	FUNC3(0x3d4, 0x45, par);
	FUNC3(0x3d5, reg->CR45, par);
	FUNC3(0x3d4, 0x50, par);
	FUNC3(0x3d5, reg->CR50, par);
	FUNC3(0x3d4, 0x51, par);
	FUNC3(0x3d5, reg->CR51, par);
	FUNC3(0x3d4, 0x53, par);
	FUNC3(0x3d5, reg->CR53, par);
	FUNC3(0x3d4, 0x58, par);
	FUNC3(0x3d5, reg->CR58, par);
	FUNC3(0x3d4, 0x60, par);
	FUNC3(0x3d5, reg->CR60, par);
	FUNC3(0x3d4, 0x66, par);
	FUNC3(0x3d5, reg->CR66, par);
	FUNC3(0x3d4, 0x67, par);
	FUNC3(0x3d5, reg->CR67, par);
	FUNC3(0x3d4, 0x68, par);
	FUNC3(0x3d5, reg->CR68, par);
	FUNC3(0x3d4, 0x69, par);
	FUNC3(0x3d5, reg->CR69, par);
	FUNC3(0x3d4, 0x6f, par);
	FUNC3(0x3d5, reg->CR6F, par);

	FUNC3(0x3d4, 0x33, par);
	FUNC3(0x3d5, reg->CR33, par);
	FUNC3(0x3d4, 0x86, par);
	FUNC3(0x3d5, reg->CR86, par);
	FUNC3(0x3d4, 0x88, par);
	FUNC3(0x3d5, reg->CR88, par);
	FUNC3(0x3d4, 0x90, par);
	FUNC3(0x3d5, reg->CR90, par);
	FUNC3(0x3d4, 0x91, par);
	FUNC3(0x3d5, reg->CR91, par);
	FUNC3(0x3d4, 0xb0, par);
	FUNC3(0x3d5, reg->CRB0, par);

	/* extended mode timing regs */
	FUNC3(0x3d4, 0x3b, par);
	FUNC3(0x3d5, reg->CR3B, par);
	FUNC3(0x3d4, 0x3c, par);
	FUNC3(0x3d5, reg->CR3C, par);
	FUNC3(0x3d4, 0x43, par);
	FUNC3(0x3d5, reg->CR43, par);
	FUNC3(0x3d4, 0x5d, par);
	FUNC3(0x3d5, reg->CR5D, par);
	FUNC3(0x3d4, 0x5e, par);
	FUNC3(0x3d5, reg->CR5E, par);
	FUNC3(0x3d4, 0x65, par);
	FUNC3(0x3d5, reg->CR65, par);

	/* save seq extended regs for DCLK PLL programming */
	FUNC3(0x3c4, 0x0e, par);
	FUNC3(0x3c5, reg->SR0E, par);
	FUNC3(0x3c4, 0x0f, par);
	FUNC3(0x3c5, reg->SR0F, par);
	FUNC3(0x3c4, 0x10, par);
	FUNC3(0x3c5, reg->SR10, par);
	FUNC3(0x3c4, 0x11, par);
	FUNC3(0x3c5, reg->SR11, par);
	FUNC3(0x3c4, 0x12, par);
	FUNC3(0x3c5, reg->SR12, par);
	FUNC3(0x3c4, 0x13, par);
	FUNC3(0x3c5, reg->SR13, par);
	FUNC3(0x3c4, 0x29, par);
	FUNC3(0x3c5, reg->SR29, par);

	FUNC3(0x3c4, 0x15, par);
	FUNC3(0x3c5, reg->SR15, par);
	FUNC3(0x3c4, 0x30, par);
	FUNC3(0x3c5, reg->SR30, par);
	FUNC3(0x3c4, 0x18, par);
	FUNC3(0x3c5, reg->SR18, par);

	/* Save flat panel expansion regsters. */
	if (par->chip == S3_SAVAGE_MX) {
		int i;

		for (i = 0; i < 8; i++) {
			FUNC3(0x3c4, 0x54+i, par);
			FUNC3(0x3c5, reg->SR54[i], par);
		}
	}

	FUNC3(0x3d4, 0x66, par);
	cr66 = FUNC1(0x3d5, par);
	FUNC3(0x3d5, cr66 | 0x80, par);
	FUNC3(0x3d4, 0x3a, par);
	cr3a = FUNC1(0x3d5, par);
	FUNC3(0x3d5, cr3a | 0x80, par);

	/* now save MIU regs */
	if (par->chip != S3_SAVAGE_MX) {
		FUNC0(FIFO_CONTROL_REG, reg->MMPR0, par);
		FUNC0(MIU_CONTROL_REG, reg->MMPR1, par);
		FUNC0(STREAMS_TIMEOUT_REG, reg->MMPR2, par);
		FUNC0(MISC_TIMEOUT_REG, reg->MMPR3, par);
	}

	FUNC3(0x3d4, 0x3a, par);
	FUNC3(0x3d5, cr3a, par);
	FUNC3(0x3d4, 0x66, par);
	FUNC3(0x3d5, cr66, par);
}