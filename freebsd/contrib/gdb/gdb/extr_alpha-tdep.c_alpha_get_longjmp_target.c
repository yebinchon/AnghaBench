
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int jb_pc; int jb_elt_size; } ;
typedef scalar_t__ CORE_ADDR ;


 int ALPHA_A0_REGNUM ;
 int ALPHA_REGISTER_SIZE ;
 int current_gdbarch ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ read_register (int ) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;

__attribute__((used)) static int
alpha_get_longjmp_target (CORE_ADDR *pc)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  CORE_ADDR jb_addr;
  char raw_buffer[ALPHA_REGISTER_SIZE];

  jb_addr = read_register (ALPHA_A0_REGNUM);

  if (target_read_memory (jb_addr + (tdep->jb_pc * tdep->jb_elt_size),
     raw_buffer, tdep->jb_elt_size))
    return 0;

  *pc = extract_unsigned_integer (raw_buffer, tdep->jb_elt_size);
  return 1;
}
