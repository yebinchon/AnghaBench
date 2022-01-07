
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTYPE_GP ;
 int RTYPE_NUM ;
 int RWARN ;
 int SKIP_WHITESPACE () ;
 unsigned int SP ;
 int input_line_pointer ;
 scalar_t__ mips_cprestore_valid ;
 unsigned int mips_frame_reg ;
 int mips_frame_reg_valid ;
 int reg_lookup (int *,int,unsigned int*) ;

int
tc_get_register (int frame)
{
  unsigned int reg;

  SKIP_WHITESPACE ();
  if (! reg_lookup (&input_line_pointer, RWARN | RTYPE_NUM | RTYPE_GP, &reg))
    reg = 0;
  if (frame)
    {
      mips_frame_reg = reg != 0 ? reg : SP;
      mips_frame_reg_valid = 1;
      mips_cprestore_valid = 0;
    }
  return reg;
}
