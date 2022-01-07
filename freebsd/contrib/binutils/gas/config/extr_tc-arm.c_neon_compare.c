
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isreg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NEON_ENC_IMMED (int) ;
 int NS_DDI ;
 int NS_NULL ;
 int NS_QQI ;
 scalar_t__ NT_float ;
 int NT_unsigned ;
 int N_EQK ;
 unsigned int N_KEY ;
 int N_SIZ ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int,unsigned int) ;
 int neon_dp_fixup (int) ;
 int neon_dyadic_misc (int ,unsigned int,int) ;
 int neon_exchange_operands () ;
 int neon_logbits (int ) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static void
neon_compare (unsigned regtypes, unsigned immtypes, int invert)
{
  if (inst.operands[2].isreg)
    {
      if (invert)
        neon_exchange_operands ();
      neon_dyadic_misc (NT_unsigned, regtypes, N_SIZ);
    }
  else
    {
      enum neon_shape rs = neon_select_shape (NS_DDI, NS_QQI, NS_NULL);
      struct neon_type_el et = neon_check_type (2, rs,
        N_EQK | N_SIZ, immtypes | N_KEY);

      inst.instruction = NEON_ENC_IMMED (inst.instruction);
      inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
      inst.instruction |= HI1 (inst.operands[0].reg) << 22;
      inst.instruction |= LOW4 (inst.operands[1].reg);
      inst.instruction |= HI1 (inst.operands[1].reg) << 5;
      inst.instruction |= neon_quad (rs) << 6;
      inst.instruction |= (et.type == NT_float) << 10;
      inst.instruction |= neon_logbits (et.size) << 18;

      inst.instruction = neon_dp_fixup (inst.instruction);
    }
}
