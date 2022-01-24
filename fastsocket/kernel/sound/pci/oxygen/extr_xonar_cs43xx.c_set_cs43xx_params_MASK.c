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
typedef  int u8 ;
struct xonar_cs43xx {int* cs4362a_regs; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;

/* Variables and functions */
 int CS4362A_FM_DOUBLE ; 
 int CS4362A_FM_MASK ; 
 int CS4362A_FM_QUAD ; 
 int CS4362A_FM_SINGLE ; 
 int CS4398_DEM_NONE ; 
 int CS4398_DIF_LJUST ; 
 int CS4398_FM_DOUBLE ; 
 int CS4398_FM_QUAD ; 
 int CS4398_FM_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (struct oxygen*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*,int,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static void FUNC3(struct oxygen *chip,
			      struct snd_pcm_hw_params *params)
{
	struct xonar_cs43xx *data = chip->model_data;
	u8 cs4398_fm, cs4362a_fm;

	if (FUNC2(params) <= 50000) {
		cs4398_fm = CS4398_FM_SINGLE;
		cs4362a_fm = CS4362A_FM_SINGLE;
	} else if (FUNC2(params) <= 100000) {
		cs4398_fm = CS4398_FM_DOUBLE;
		cs4362a_fm = CS4362A_FM_DOUBLE;
	} else {
		cs4398_fm = CS4398_FM_QUAD;
		cs4362a_fm = CS4362A_FM_QUAD;
	}
	cs4398_fm |= CS4398_DEM_NONE | CS4398_DIF_LJUST;
	FUNC1(chip, 2, cs4398_fm);
	cs4362a_fm |= data->cs4362a_regs[6] & ~CS4362A_FM_MASK;
	FUNC0(chip, 6, cs4362a_fm);
	FUNC0(chip, 12, cs4362a_fm);
	cs4362a_fm &= CS4362A_FM_MASK;
	cs4362a_fm |= data->cs4362a_regs[9] & ~CS4362A_FM_MASK;
	FUNC0(chip, 9, cs4362a_fm);
}