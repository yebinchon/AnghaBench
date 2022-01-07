
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct data {int dummy; } ;


 int cpu_to_fdt16 (int ) ;
 int cpu_to_fdt32 (int ) ;
 int cpu_to_fdt64 (int ) ;
 struct data data_append_data (struct data,int *,int) ;
 int die (char*,int) ;

struct data data_append_integer(struct data d, uint64_t value, int bits)
{
 uint8_t value_8;
 uint16_t value_16;
 uint32_t value_32;
 uint64_t value_64;

 switch (bits) {
 case 8:
  value_8 = value;
  return data_append_data(d, &value_8, 1);

 case 16:
  value_16 = cpu_to_fdt16(value);
  return data_append_data(d, &value_16, 2);

 case 32:
  value_32 = cpu_to_fdt32(value);
  return data_append_data(d, &value_32, 4);

 case 64:
  value_64 = cpu_to_fdt64(value);
  return data_append_data(d, &value_64, 8);

 default:
  die("Invalid literal size (%d)\n", bits);
 }
}
