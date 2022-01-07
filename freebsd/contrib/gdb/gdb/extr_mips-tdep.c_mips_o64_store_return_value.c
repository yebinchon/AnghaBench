
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct return_value_word {int reg_offset; int buf_offset; scalar_t__ len; int reg; } ;
typedef int raw_buffer ;


 int DEPRECATED_REGISTER_BYTE (int ) ;
 int MAX_REGISTER_SIZE ;
 int current_gdbarch ;
 int deprecated_write_register_bytes (int ,char*,int ) ;
 int memcpy (char*,char*,scalar_t__) ;
 int memset (char*,int ,int) ;
 int register_size (int ,int ) ;
 int return_value_location (struct type*,struct return_value_word*,struct return_value_word*) ;

__attribute__((used)) static void
mips_o64_store_return_value (struct type *valtype, char *valbuf)
{
  char raw_buffer[MAX_REGISTER_SIZE];
  struct return_value_word lo;
  struct return_value_word hi;
  return_value_location (valtype, &hi, &lo);

  memset (raw_buffer, 0, sizeof (raw_buffer));
  memcpy (raw_buffer + lo.reg_offset, valbuf + lo.buf_offset, lo.len);
  deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (lo.reg),
       raw_buffer, register_size (current_gdbarch,
             lo.reg));

  if (hi.len > 0)
    {
      memset (raw_buffer, 0, sizeof (raw_buffer));
      memcpy (raw_buffer + hi.reg_offset, valbuf + hi.buf_offset, hi.len);
      deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (hi.reg),
           raw_buffer,
           register_size (current_gdbarch,
            hi.reg));
    }
}
