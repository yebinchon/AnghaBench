
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {unsigned int hr_block_bytes; unsigned int hr_block_bits; scalar_t__ hr_bdev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int o2hb_read_block_input (struct o2hb_region*,char const*,size_t,unsigned long*,unsigned int*) ;

__attribute__((used)) static ssize_t o2hb_region_block_bytes_write(struct o2hb_region *reg,
          const char *page,
          size_t count)
{
 int status;
 unsigned long block_bytes;
 unsigned int block_bits;

 if (reg->hr_bdev)
  return -EINVAL;

 status = o2hb_read_block_input(reg, page, count,
           &block_bytes, &block_bits);
 if (status)
  return status;

 reg->hr_block_bytes = (unsigned int)block_bytes;
 reg->hr_block_bits = block_bits;

 return count;
}
