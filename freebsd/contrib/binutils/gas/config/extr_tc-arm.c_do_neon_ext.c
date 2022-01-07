
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NS_DDDI ;
 int NS_NULL ;
 int NS_QQQI ;
 int N_16 ;
 int N_32 ;
 int N_64 ;
 int N_8 ;
 int N_EQK ;
 int N_KEY ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int ,int) ;
 unsigned int neon_dp_fixup (unsigned int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_ext (void)
{
  enum neon_shape rs = neon_select_shape (NS_DDDI, NS_QQQI, NS_NULL);
  struct neon_type_el et = neon_check_type (3, rs,
    N_EQK, N_EQK, N_8 | N_16 | N_32 | N_64 | N_KEY);
  unsigned imm = (inst.operands[3].imm * et.size) / 8;
  constraint (imm >= (neon_quad (rs) ? 16 : 8), _("shift out of range"));
  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= LOW4 (inst.operands[1].reg) << 16;
  inst.instruction |= HI1 (inst.operands[1].reg) << 7;
  inst.instruction |= LOW4 (inst.operands[2].reg);
  inst.instruction |= HI1 (inst.operands[2].reg) << 5;
  inst.instruction |= neon_quad (rs) << 6;
  inst.instruction |= imm << 8;

  inst.instruction = neon_dp_fixup (inst.instruction);
}
