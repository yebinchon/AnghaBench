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
typedef  int u32 ;
typedef  int u16 ;
struct echoaudio {int* dsp_code; int comm_page_phys; void* bad_board; void* asic_loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHI32_CONTROL_REG ; 
 int /*<<< orphan*/  CHI32_STATUS_REG ; 
 int CHI32_STATUS_REG_HF3 ; 
 int CHI32_STATUS_REG_HF4 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DSP_FNC_SET_COMMPAGE_ADDR ; 
 int /*<<< orphan*/  DSP_VC_RESET ; 
 int EIO ; 
 void* FALSE ; 
 void* TRUE ; 
 int FUNC1 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct echoaudio*) ; 
 scalar_t__ FUNC3 (struct echoaudio*) ; 
 scalar_t__ FUNC4 (struct echoaudio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct echoaudio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct echoaudio*,int) ; 

__attribute__((used)) static int FUNC8(struct echoaudio *chip, u16 *code)
{
	u32 address, data;
	int index, words, i;

	if (chip->dsp_code == code) {
		FUNC0(("DSP is already loaded!\n"));
		return 0;
	}
	chip->bad_board = TRUE;		/* Set TRUE until DSP loaded */
	chip->dsp_code = NULL;		/* Current DSP code not loaded */
	chip->asic_loaded = FALSE;	/* Loading the DSP code will reset the ASIC */

	FUNC0(("load_dsp: Set bad_board to TRUE\n"));

	/* If this board requires a resident loader, install it. */
#ifdef DSP_56361
	if ((i = install_resident_loader(chip)) < 0)
		return i;
#endif

	/* Send software reset command */
	if (FUNC4(chip, DSP_VC_RESET) < 0) {
		FUNC0(("LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\n"));
		return -EIO;
	}
	/* Delay 10us */
	FUNC6(10);

	/* Wait 10ms for HF3 to indicate that software reset is complete */
	for (i = 0; i < 1000; i++) {	/* Timeout is 10us * 1000 = 10ms */
		if (FUNC1(chip, CHI32_STATUS_REG) &
		    CHI32_STATUS_REG_HF3)
			break;
		FUNC6(10);
	}

	if (i == 1000) {
		FUNC0(("load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\n"));
		return -EIO;
	}

	/* Set DSP format bits for 24 bit mode now that soft reset is done */
	FUNC5(chip, CHI32_CONTROL_REG,
			 FUNC1(chip, CHI32_CONTROL_REG) | 0x900);

	/* Main loader loop */

	index = code[0];
	for (;;) {
		int block_type, mem_type;

		/* Total Block Size */
		index++;

		/* Block Type */
		block_type = code[index];
		if (block_type == 4)	/* We're finished */
			break;

		index++;

		/* Memory Type  P=0,X=1,Y=2 */
		mem_type = code[index++];

		/* Block Code Size */
		words = code[index++];
		if (words == 0)		/* We're finished */
			break;

		/* Start Address */
		address = ((u32)code[index] << 16) + code[index + 1];
		index += 2;

		if (FUNC7(chip, words) < 0) {
			FUNC0(("load_dsp: failed to write number of DSP words\n"));
			return -EIO;
		}
		if (FUNC7(chip, address) < 0) {
			FUNC0(("load_dsp: failed to write DSP address\n"));
			return -EIO;
		}
		if (FUNC7(chip, mem_type) < 0) {
			FUNC0(("load_dsp: failed to write DSP memory type\n"));
			return -EIO;
		}
		/* Code */
		for (i = 0; i < words; i++, index+=2) {
			data = ((u32)code[index] << 16) + code[index + 1];
			if (FUNC7(chip, data) < 0) {
				FUNC0(("load_dsp: failed to write DSP data\n"));
				return -EIO;
			}
		}
	}

	if (FUNC7(chip, 0) < 0) {	/* We're done!!! */
		FUNC0(("load_dsp: Failed to write final zero\n"));
		return -EIO;
	}
	FUNC6(10);

	for (i = 0; i < 5000; i++) {	/* Timeout is 100us * 5000 = 500ms */
		/* Wait for flag 4 - indicates that the DSP loaded OK */
		if (FUNC1(chip, CHI32_STATUS_REG) &
		    CHI32_STATUS_REG_HF4) {
			FUNC5(chip, CHI32_CONTROL_REG,
					 FUNC1(chip, CHI32_CONTROL_REG) & ~0x1b00);

			if (FUNC7(chip, DSP_FNC_SET_COMMPAGE_ADDR) < 0) {
				FUNC0(("load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\n"));
				return -EIO;
			}

			if (FUNC7(chip, chip->comm_page_phys) < 0) {
				FUNC0(("load_dsp: Failed to write comm page address\n"));
				return -EIO;
			}

			/* Get the serial number via slave mode.
			This is triggered by the SET_COMMPAGE_ADDR command.
			We don't actually use the serial number but we have to
			get it as part of the DSP init voodoo. */
			if (FUNC3(chip) < 0) {
				FUNC0(("load_dsp: Failed to read serial number\n"));
				return -EIO;
			}

			chip->dsp_code = code;		/* Show which DSP code loaded */
			chip->bad_board = FALSE;	/* DSP OK */
			FUNC0(("load_dsp: OK!\n"));
			return 0;
		}
		FUNC6(100);
	}

	FUNC0(("load_dsp: DSP load timed out waiting for HF4\n"));
	return -EIO;
}