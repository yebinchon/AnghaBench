
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct sep_device* private_data; } ;


 int ENOTTY ;
 int dbg (char*) ;
 int edbg (char*,...) ;
 int sep_add_flow_tables_handler (struct sep_device*,unsigned long) ;
 int sep_add_flow_tables_message_handler (struct sep_device*,unsigned long) ;
 int sep_allocate_data_pool_memory_handler (struct sep_device*,unsigned long) ;
 int sep_create_flow_dma_tables_handler (struct sep_device*,unsigned long) ;
 int sep_create_sync_dma_tables_handler (struct sep_device*,unsigned long) ;
 int sep_end_transaction_handler (struct sep_device*,unsigned long) ;
 int sep_free_dma_table_data_handler (struct sep_device*) ;
 int sep_get_physical_mapped_offset_handler (struct sep_device*,unsigned long) ;
 int sep_get_static_pool_addr_handler (struct sep_device*,unsigned long) ;
 int sep_get_time_handler (struct sep_device*,unsigned long) ;
 int sep_init_handler (struct sep_device*,unsigned long) ;
 int sep_read_from_data_pool_handler (struct sep_device*,unsigned long) ;
 int sep_realloc_cache_resident_handler (struct sep_device*,unsigned long) ;
 int sep_send_command_handler (struct sep_device*) ;
 int sep_send_reply_command_handler (struct sep_device*) ;
 int sep_set_flow_id_handler (struct sep_device*,unsigned long) ;
 int sep_start_handler (struct sep_device*) ;
 int sep_write_into_data_pool_handler (struct sep_device*,unsigned long) ;

__attribute__((used)) static int sep_ioctl(struct inode *inode, struct file *filp, unsigned int cmd, unsigned long arg)
{
 int error = 0;
 struct sep_device *sep = filp->private_data;

 dbg("------------>SEP Driver: ioctl start\n");

 edbg("SEP Driver: cmd is %x\n", cmd);

 switch (cmd) {
 case 133:

  sep_send_command_handler(sep);
  edbg("SEP Driver: after sep_send_command_handler\n");
  break;
 case 132:

  sep_send_reply_command_handler(sep);
  break;
 case 143:

  error = sep_allocate_data_pool_memory_handler(sep, arg);
  break;
 case 128:

  error = sep_write_into_data_pool_handler(sep, arg);
  break;
 case 135:

  error = sep_read_from_data_pool_handler(sep, arg);
  break;
 case 141:

  error = sep_create_sync_dma_tables_handler(sep, arg);
  break;
 case 142:

  error = sep_create_flow_dma_tables_handler(sep, arg);
  break;
 case 139:

  error = sep_free_dma_table_data_handler(sep);
  break;
 case 129:

  error = sep_set_flow_id_handler(sep, (unsigned long)arg);
  break;
 case 144:

  error = sep_add_flow_tables_handler(sep, arg);
  break;
 case 145:

  error = sep_add_flow_tables_message_handler(sep, arg);
  break;
 case 130:

  error = sep_start_handler(sep);
  break;
 case 131:

  error = sep_init_handler(sep, arg);
  break;
 case 136:

  error = sep_get_static_pool_addr_handler(sep, arg);
  break;
 case 140:
  error = sep_end_transaction_handler(sep, arg);
  break;
 case 134:
  error = sep_realloc_cache_resident_handler(sep, arg);
  break;
 case 137:
  error = sep_get_physical_mapped_offset_handler(sep, arg);
  break;
 case 138:
  error = sep_get_time_handler(sep, arg);
  break;
 default:
  error = -ENOTTY;
  break;
 }
 dbg("SEP Driver:<-------- ioctl end\n");
 return error;
}
