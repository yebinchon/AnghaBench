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
struct sep_driver_build_sync_table_t {int /*<<< orphan*/  isKernelVirtualAddress; int /*<<< orphan*/  table_data_size; int /*<<< orphan*/  in_table_num_entries; int /*<<< orphan*/  in_table_address; scalar_t__ block_size; scalar_t__ data_in_size; scalar_t__ app_in_address; int /*<<< orphan*/  out_table_num_entries; int /*<<< orphan*/  out_table_address; scalar_t__ app_out_address; } ;
struct sep_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct sep_driver_build_sync_table_t*,void*,int) ; 
 scalar_t__ FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int FUNC4 (struct sep_device*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sep_device*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sep_device *sep,
						unsigned long arg)
{
	int error;
	/* command arguments */
	struct sep_driver_build_sync_table_t command_args;

	FUNC2("SEP Driver:--------> sep_create_sync_dma_tables_handler start\n");

	error = FUNC0(&command_args, (void *) arg, sizeof(struct sep_driver_build_sync_table_t));
	if (error)
		goto end_function;

	FUNC3("app_in_address is %08lx\n", command_args.app_in_address);
	FUNC3("app_out_address is %08lx\n", command_args.app_out_address);
	FUNC3("data_size is %lu\n", command_args.data_in_size);
	FUNC3("block_size is %lu\n", command_args.block_size);

	/* check if we need to build only input table or input/output */
	if (command_args.app_out_address)
		/* prepare input and output tables */
		error = FUNC5(sep,
							   command_args.app_in_address,
							   command_args.app_out_address,
							   command_args.data_in_size,
							   command_args.block_size,
							   &command_args.in_table_address,
							   &command_args.out_table_address, &command_args.in_table_num_entries, &command_args.out_table_num_entries, &command_args.table_data_size, command_args.isKernelVirtualAddress);
	else
		/* prepare input tables */
		error = FUNC4(sep,
						    command_args.app_in_address,
						    command_args.data_in_size, command_args.block_size, &command_args.in_table_address, &command_args.in_table_num_entries, &command_args.table_data_size, command_args.isKernelVirtualAddress);

	if (error)
		goto end_function;
	/* copy to user */
	if (FUNC1((void *) arg, (void *) &command_args, sizeof(struct sep_driver_build_sync_table_t)))
		error = -EFAULT;
end_function:
	FUNC2("SEP Driver:<-------- sep_create_sync_dma_tables_handler end\n");
	return error;
}