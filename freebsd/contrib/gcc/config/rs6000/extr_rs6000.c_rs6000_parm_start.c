
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ABI_V4 ;
 scalar_t__ DEFAULT_ABI ;
 int PARM_BOUNDARY ;
 int function_arg_boundary (int,int ) ;

__attribute__((used)) static unsigned int
rs6000_parm_start (enum machine_mode mode, tree type, unsigned int nwords)
{
  unsigned int align;
  unsigned int parm_offset;

  align = function_arg_boundary (mode, type) / PARM_BOUNDARY - 1;
  parm_offset = DEFAULT_ABI == ABI_V4 ? 2 : 6;
  return nwords + (-(parm_offset + nwords) & align);
}
