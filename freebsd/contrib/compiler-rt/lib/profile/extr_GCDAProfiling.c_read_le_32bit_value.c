
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cur_pos ;
 scalar_t__ new_file ;
 int* write_buffer ;

__attribute__((used)) static uint32_t read_le_32bit_value() {
  uint32_t val = 0;
  int i;

  if (new_file)
    return (uint32_t)-1;

  for (i = 0; i < 4; i++)
    val |= write_buffer[cur_pos++] << (8*i);
  return val;
}
