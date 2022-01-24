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
struct sep_driver_init_t {unsigned long message_size_in_words; scalar_t__ message_addr; } ;
struct sep_device {int dummy; } ;

/* Variables and functions */
 int HW_CC_SRAM_BASE_ADDRESS ; 
 int /*<<< orphan*/  HW_HOST_HOST_SEP_GPR0_REG_ADDR ; 
 int HW_HOST_SEP_HOST_GPR0_REG_ADDR ; 
 int HW_HOST_SEP_HOST_GPR3_REG_ADDR ; 
 int /*<<< orphan*/  HW_SRAM_ADDR_REG_ADDR ; 
 int /*<<< orphan*/  HW_SRAM_DATA_REG_ADDR ; 
 unsigned long FUNC0 (struct sep_driver_init_t*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long*) ; 
 unsigned long FUNC4 (struct sep_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sep_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sep_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sep_device *sep, unsigned long arg)
{
	unsigned long message_word;
	unsigned long *message_ptr;
	struct sep_driver_init_t command_args;
	unsigned long counter;
	unsigned long error;
	unsigned long reg_val;

	FUNC1("SEP Driver:--------> sep_init_handler start\n");
	error = 0;

	error = FUNC0(&command_args, (void *) arg, sizeof(struct sep_driver_init_t));

	FUNC1("SEP Driver:--------> sep_init_handler - finished copy_from_user \n");

	if (error)
		goto end_function;

	/* PATCH - configure the DMA to single -burst instead of multi-burst */
	/*sep_configure_dma_burst(); */

	FUNC1("SEP Driver:--------> sep_init_handler - finished sep_configure_dma_burst \n");

	message_ptr = (unsigned long *) command_args.message_addr;

	/* set the base address of the SRAM  */
	FUNC6(sep, HW_SRAM_ADDR_REG_ADDR, HW_CC_SRAM_BASE_ADDRESS);

	for (counter = 0; counter < command_args.message_size_in_words; counter++, message_ptr++) {
		FUNC3(message_word, message_ptr);
		/* write data to SRAM */
		FUNC6(sep, HW_SRAM_DATA_REG_ADDR, message_word);
		FUNC2("SEP Driver:message_word is %lu\n", message_word);
		/* wait for write complete */
		FUNC5(sep);
	}
	FUNC1("SEP Driver:--------> sep_init_handler - finished getting messages from user space\n");
	/* signal SEP */
	FUNC6(sep, HW_HOST_HOST_SEP_GPR0_REG_ADDR, 0x1);

	do
		reg_val = FUNC4(sep, HW_HOST_SEP_HOST_GPR3_REG_ADDR);
	while (!(reg_val & 0xFFFFFFFD));

	FUNC1("SEP Driver:--------> sep_init_handler - finished waiting for reg_val & 0xFFFFFFFD \n");

	/* check the value */
	if (reg_val == 0x1) {
		FUNC2("SEP Driver:init failed\n");

		error = FUNC4(sep, 0x8060);
		FUNC2("SEP Driver:sw monitor is %lu\n", error);

		/* fatal error - read erro status from GPRO */
		error = FUNC4(sep, HW_HOST_SEP_HOST_GPR0_REG_ADDR);
		FUNC2("SEP Driver:error is %lu\n", error);
	}
end_function:
	FUNC1("SEP Driver:<-------- sep_init_handler end\n");
	return error;

}