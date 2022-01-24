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
struct snd_emu10k1 {scalar_t__ audigy; } ;

/* Variables and functions */
 int ATKHLDM ; 
 int ATKHLDV ; 
 int A_FXRT1 ; 
 int A_FXRT2 ; 
 int A_SENDAMOUNTS ; 
 int CCCA ; 
 int CCR ; 
 int CPF ; 
 int CVCF ; 
 int DCYSUSM ; 
 int DCYSUSV ; 
 int DSL ; 
 int ENVVAL ; 
 int ENVVOL ; 
 int FM2FRQ2 ; 
 int FMMOD ; 
 int FXRT ; 
 int IFATN ; 
 int IP ; 
 int LFOVAL1 ; 
 int LFOVAL2 ; 
 int PEFE ; 
 int PSST ; 
 int PTRX ; 
 int TEMPENV ; 
 int TREMFRQ ; 
 int VTFT ; 
 int Z1 ; 
 int Z2 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int,int) ; 

void FUNC1(struct snd_emu10k1 *emu, int ch)
{
	FUNC0(emu, DCYSUSV, ch, 0);
	FUNC0(emu, IP, ch, 0);
	FUNC0(emu, VTFT, ch, 0xffff);
	FUNC0(emu, CVCF, ch, 0xffff);
	FUNC0(emu, PTRX, ch, 0);
	FUNC0(emu, CPF, ch, 0);
	FUNC0(emu, CCR, ch, 0);

	FUNC0(emu, PSST, ch, 0);
	FUNC0(emu, DSL, ch, 0x10);
	FUNC0(emu, CCCA, ch, 0);
	FUNC0(emu, Z1, ch, 0);
	FUNC0(emu, Z2, ch, 0);
	FUNC0(emu, FXRT, ch, 0x32100000);

	FUNC0(emu, ATKHLDM, ch, 0);
	FUNC0(emu, DCYSUSM, ch, 0);
	FUNC0(emu, IFATN, ch, 0xffff);
	FUNC0(emu, PEFE, ch, 0);
	FUNC0(emu, FMMOD, ch, 0);
	FUNC0(emu, TREMFRQ, ch, 24);	/* 1 Hz */
	FUNC0(emu, FM2FRQ2, ch, 24);	/* 1 Hz */
	FUNC0(emu, TEMPENV, ch, 0);

	/*** these are last so OFF prevents writing ***/
	FUNC0(emu, LFOVAL2, ch, 0);
	FUNC0(emu, LFOVAL1, ch, 0);
	FUNC0(emu, ATKHLDV, ch, 0);
	FUNC0(emu, ENVVOL, ch, 0);
	FUNC0(emu, ENVVAL, ch, 0);

	/* Audigy extra stuffs */
	if (emu->audigy) {
		FUNC0(emu, 0x4c, ch, 0); /* ?? */
		FUNC0(emu, 0x4d, ch, 0); /* ?? */
		FUNC0(emu, 0x4e, ch, 0); /* ?? */
		FUNC0(emu, 0x4f, ch, 0); /* ?? */
		FUNC0(emu, A_FXRT1, ch, 0x03020100);
		FUNC0(emu, A_FXRT2, ch, 0x3f3f3f3f);
		FUNC0(emu, A_SENDAMOUNTS, ch, 0);
	}
}