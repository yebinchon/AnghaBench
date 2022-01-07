
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {unsigned int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; int imm; int present; } ;


 int FAIL ;
 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 unsigned int NEON_ENC_IMMED (unsigned int) ;
 unsigned int NEON_ENC_INTEGER (unsigned int) ;


 int NS_DF ;
 int NS_FD ;
 int NS_FF ;
 int NS_FFI ;
 int NS_NULL ;


 int do_vfp_nsyn_cvt (int,int) ;
 TYPE_2__ inst ;
 int neon_cvt_flavour (int) ;
 void* neon_dp_fixup (unsigned int) ;
 int neon_quad (int) ;
 int neon_select_shape (int,int,int ,int,int,int ,int ,int ,int ) ;
 int vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_cvt (void)
{
  enum neon_shape rs = neon_select_shape (130, 128, NS_FFI, 131, 129,
    NS_FD, NS_DF, NS_FF, NS_NULL);
  int flavour = neon_cvt_flavour (rs);


  if (flavour >= 4)
    {
      do_vfp_nsyn_cvt (rs, flavour);
      return;
    }

  switch (rs)
    {
    case 130:
    case 128:
      {
        if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;



        if (inst.operands[2].present && inst.operands[2].imm == 0)
          goto int_encode;
        unsigned immbits = 32 - inst.operands[2].imm;
        unsigned enctab[] = { 0x0000100, 0x1000100, 0x0, 0x1000000 };
        inst.instruction = NEON_ENC_IMMED (inst.instruction);
        if (flavour != -1)
          inst.instruction |= enctab[flavour];
        inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
        inst.instruction |= HI1 (inst.operands[0].reg) << 22;
        inst.instruction |= LOW4 (inst.operands[1].reg);
        inst.instruction |= HI1 (inst.operands[1].reg) << 5;
        inst.instruction |= neon_quad (rs) << 6;
        inst.instruction |= 1 << 21;
        inst.instruction |= immbits << 16;

        inst.instruction = neon_dp_fixup (inst.instruction);
      }
      break;

    case 131:
    case 129:
    int_encode:
      {
        unsigned enctab[] = { 0x100, 0x180, 0x0, 0x080 };

        inst.instruction = NEON_ENC_INTEGER (inst.instruction);

        if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;

        if (flavour != -1)
          inst.instruction |= enctab[flavour];

        inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
        inst.instruction |= HI1 (inst.operands[0].reg) << 22;
        inst.instruction |= LOW4 (inst.operands[1].reg);
        inst.instruction |= HI1 (inst.operands[1].reg) << 5;
        inst.instruction |= neon_quad (rs) << 6;
        inst.instruction |= 2 << 18;

        inst.instruction = neon_dp_fixup (inst.instruction);
      }
    break;

    default:

      do_vfp_nsyn_cvt (rs, flavour);
    }
}
