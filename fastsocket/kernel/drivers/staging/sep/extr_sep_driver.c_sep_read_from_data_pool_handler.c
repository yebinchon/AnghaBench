
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_driver_write_t {int num_bytes; int datapool_address; int app_address; } ;
struct sep_device {void* shared_addr; } ;


 int EINVAL ;
 int SEP_DRIVER_DATA_POOL_AREA_OFFSET_IN_BYTES ;
 int SEP_DRIVER_DATA_POOL_SHARED_AREA_SIZE_IN_BYTES ;
 int copy_to_user (void*,void*,unsigned long) ;
 int dbg (char*) ;
 int get_user (unsigned long,int *) ;

__attribute__((used)) static int sep_read_from_data_pool_handler(struct sep_device *sep, unsigned long arg)
{
 int error;

 unsigned long app_out_address;

 unsigned long va;
 void *virt_address;
 unsigned long num_bytes;
 void *data_pool_area_addr;

 dbg("SEP Driver:--------> sep_read_from_data_pool_handler start\n");


 error = get_user(app_out_address, &(((struct sep_driver_write_t *) arg)->app_address));
 if (error)
  goto end_function;


 error = get_user(va, &(((struct sep_driver_write_t *) arg)->datapool_address));
 if (error)
  goto end_function;
 virt_address = (void *)va;


 error = get_user(num_bytes, &(((struct sep_driver_write_t *) arg)->num_bytes));
 if (error)
  goto end_function;


 data_pool_area_addr = sep->shared_addr + SEP_DRIVER_DATA_POOL_AREA_OFFSET_IN_BYTES;




 if (virt_address < data_pool_area_addr || virt_address > data_pool_area_addr + SEP_DRIVER_DATA_POOL_SHARED_AREA_SIZE_IN_BYTES) {
  error = -EINVAL;
  goto end_function;
 }


 error = copy_to_user((void *) app_out_address, virt_address, num_bytes);
end_function:
 dbg("SEP Driver:<-------- sep_read_from_data_pool_handler end\n");
 return error;
}
