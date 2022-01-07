
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_driver_build_sync_table_t {int isKernelVirtualAddress; int table_data_size; int in_table_num_entries; int in_table_address; scalar_t__ block_size; scalar_t__ data_in_size; scalar_t__ app_in_address; int out_table_num_entries; int out_table_address; scalar_t__ app_out_address; } ;
struct sep_device {int dummy; } ;


 int EFAULT ;
 int copy_from_user (struct sep_driver_build_sync_table_t*,void*,int) ;
 scalar_t__ copy_to_user (void*,void*,int) ;
 int dbg (char*) ;
 int edbg (char*,scalar_t__) ;
 int sep_prepare_input_dma_table (struct sep_device*,scalar_t__,scalar_t__,scalar_t__,int *,int *,int *,int ) ;
 int sep_prepare_input_output_dma_table (struct sep_device*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static int sep_create_sync_dma_tables_handler(struct sep_device *sep,
      unsigned long arg)
{
 int error;

 struct sep_driver_build_sync_table_t command_args;

 dbg("SEP Driver:--------> sep_create_sync_dma_tables_handler start\n");

 error = copy_from_user(&command_args, (void *) arg, sizeof(struct sep_driver_build_sync_table_t));
 if (error)
  goto end_function;

 edbg("app_in_address is %08lx\n", command_args.app_in_address);
 edbg("app_out_address is %08lx\n", command_args.app_out_address);
 edbg("data_size is %lu\n", command_args.data_in_size);
 edbg("block_size is %lu\n", command_args.block_size);


 if (command_args.app_out_address)

  error = sep_prepare_input_output_dma_table(sep,
          command_args.app_in_address,
          command_args.app_out_address,
          command_args.data_in_size,
          command_args.block_size,
          &command_args.in_table_address,
          &command_args.out_table_address, &command_args.in_table_num_entries, &command_args.out_table_num_entries, &command_args.table_data_size, command_args.isKernelVirtualAddress);
 else

  error = sep_prepare_input_dma_table(sep,
          command_args.app_in_address,
          command_args.data_in_size, command_args.block_size, &command_args.in_table_address, &command_args.in_table_num_entries, &command_args.table_data_size, command_args.isKernelVirtualAddress);

 if (error)
  goto end_function;

 if (copy_to_user((void *) arg, (void *) &command_args, sizeof(struct sep_driver_build_sync_table_t)))
  error = -EFAULT;
end_function:
 dbg("SEP Driver:<-------- sep_create_sync_dma_tables_handler end\n");
 return error;
}
