
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_inst ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ MIPS_INSTLEN ;
 int RA_REGNUM ;
 scalar_t__ find_pc_partial_function (scalar_t__,char**,scalar_t__*,int *) ;
 int mips_fetch_instruction (scalar_t__) ;
 scalar_t__ read_signed_register (int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static CORE_ADDR
mips_skip_stub (CORE_ADDR pc)
{
  char *name;
  CORE_ADDR start_addr;


  if (find_pc_partial_function (pc, &name, &start_addr, ((void*)0)) == 0)
    return 0;



  if (strcmp (name, "__mips16_ret_sf") == 0
      || strcmp (name, "__mips16_ret_df") == 0)
    return read_signed_register (RA_REGNUM);

  if (strncmp (name, "__mips16_call_stub_", 19) == 0)
    {


      if (name[19] >= '0' && name[19] <= '9')
 return read_signed_register (2);





      else if (name[19] == 's' || name[19] == 'd')
 {
   if (pc == start_addr)
     {
       CORE_ADDR target_pc = read_signed_register (2);
       t_inst inst;
       int i;


       if (find_pc_partial_function (target_pc, &name, ((void*)0), ((void*)0)) ==
    0)
  return target_pc;
       if (strncmp (name, "__fn_stub_", 10) != 0
    && strcmp (name, "etext") != 0
    && strcmp (name, "_etext") != 0)
  return target_pc;




       for (i = 0, pc = 0; i < 20; i++, target_pc += MIPS_INSTLEN)
  {
    inst = mips_fetch_instruction (target_pc);
    if ((inst & 0xffff0000) == 0x3c010000)
      pc = (inst << 16) & 0xffff0000;
    else if ((inst & 0xffff0000) == 0x24210000)
      return pc | (inst & 0xffff);
  }


       return target_pc;
     }
   else


     return read_signed_register (18);
 }
    }
  return 0;
}
