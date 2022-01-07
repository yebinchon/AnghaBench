
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int Pmode ;
 scalar_t__ TARGET_64BIT ;
 int gen_load_multiple (int ,int ,int ) ;
 int gen_movdi (int ,int ) ;
 int gen_movsi (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int get_frame_alias_set () ;
 int plus_constant (int ,int) ;
 int set_mem_alias_set (int ,int ) ;

__attribute__((used)) static rtx
restore_gprs (rtx base, int offset, int first, int last)
{
  rtx addr, insn;

  addr = plus_constant (base, offset);
  addr = gen_rtx_MEM (Pmode, addr);
  set_mem_alias_set (addr, get_frame_alias_set ());


  if (first == last)
    {
      if (TARGET_64BIT)
        insn = gen_movdi (gen_rtx_REG (Pmode, first), addr);
      else
        insn = gen_movsi (gen_rtx_REG (Pmode, first), addr);

      return insn;
    }

  insn = gen_load_multiple (gen_rtx_REG (Pmode, first),
       addr,
       GEN_INT (last - first + 1));
  return insn;
}
