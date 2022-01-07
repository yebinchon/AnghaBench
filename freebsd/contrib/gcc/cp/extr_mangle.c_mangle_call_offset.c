
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int write_char (char) ;
 int write_integer_cst (scalar_t__ const) ;

__attribute__((used)) static void
mangle_call_offset (const tree fixed_offset, const tree virtual_offset)
{
  write_char (virtual_offset ? 'v' : 'h');


  write_integer_cst (fixed_offset);
  write_char ('_');


  if (virtual_offset)
    {
      write_integer_cst (virtual_offset);
      write_char ('_');
    }
}
