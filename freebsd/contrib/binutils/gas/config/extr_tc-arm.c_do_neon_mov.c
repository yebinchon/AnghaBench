
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; int type; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; int * error; } ;
struct TYPE_3__ {unsigned int reg; int imm; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 char* BAD_FPU ;
 int FAIL ;
 int HI1 (unsigned int) ;
 int LOW4 (unsigned int) ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 unsigned int NEON_SCALAR_INDEX (int) ;
 unsigned int NEON_SCALAR_REG (int) ;







 int NS_NULL ;







 int NT_float ;
 int NT_invtype ;
 int NT_signed ;
 int N_16 ;
 int N_32 ;
 int N_8 ;
 int N_EQK ;
 int N_F64 ;
 int N_KEY ;
 int N_S16 ;
 int N_S8 ;
 int N_U16 ;
 int N_U8 ;
 int _ (char*) ;
 int abort () ;
 int constraint (int,int ) ;
 int cpu_variant ;
 int do_vfp_cond_or_thumb () ;
 int do_vfp_nsyn_opcode (char const*) ;
 int first_error (int ) ;
 int fpu_neon_ext_v1 ;
 int fpu_vfp_ext_v1 ;
 int fpu_vfp_ext_v2 ;
 TYPE_2__ inst ;
 int is_quarter_float (int) ;
 int memset (TYPE_1__*,char,int) ;
 struct neon_type_el neon_check_type (int,int,int,int) ;
 void* neon_dp_fixup (int) ;
 void* neon_logbits (int) ;
 int neon_move_immediate () ;
 int neon_qfloat_bits (int) ;
 int neon_quad (int) ;
 int neon_select_shape (int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_mov (void)
{
  enum neon_shape rs = neon_select_shape (130, 137, 139, 131,
    133, 141, 134, 140, 128, 129, 138, 136, 132, 135,
    NS_NULL);
  struct neon_type_el et;
  const char *ldconst = 0;

  switch (rs)
    {
    case 141:
      et = neon_check_type (2, rs, N_EQK, N_F64 | N_KEY);

      inst.error = ((void*)0);
      if (et.type == NT_float && et.size == 64)
        {
          do_vfp_nsyn_opcode ("fcpyd");
          break;
        }


    case 133:
      {
        if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;



        inst.instruction = 0x0200110;
        inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
        inst.instruction |= HI1 (inst.operands[0].reg) << 22;
        inst.instruction |= LOW4 (inst.operands[1].reg);
        inst.instruction |= HI1 (inst.operands[1].reg) << 5;
        inst.instruction |= LOW4 (inst.operands[1].reg) << 16;
        inst.instruction |= HI1 (inst.operands[1].reg) << 7;
        inst.instruction |= neon_quad (rs) << 6;

        inst.instruction = neon_dp_fixup (inst.instruction);
      }
      break;

    case 140:
      et = neon_check_type (2, rs, N_EQK, N_F64 | N_KEY);
      inst.error = ((void*)0);
      if (et.type == NT_float && et.size == 64)
        {

          ldconst = "fconstd";
          goto encode_fconstd;
        }


    case 134:
      if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
        return;
      inst.instruction = 0x0800010;
      neon_move_immediate ();
      inst.instruction = neon_dp_fixup (inst.instruction);
      break;

    case 128:
      {
        unsigned bcdebits = 0;
        struct neon_type_el et = neon_check_type (2, NS_NULL,
          N_8 | N_16 | N_32 | N_KEY, N_EQK);
        int logsize = neon_logbits (et.size);
        unsigned dn = NEON_SCALAR_REG (inst.operands[0].reg);
        unsigned x = NEON_SCALAR_INDEX (inst.operands[0].reg);

        constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v1),
                    _(BAD_FPU));
        constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_neon_ext_v1)
                    && et.size != 32, _(BAD_FPU));
        constraint (et.type == NT_invtype, _("bad type for scalar"));
        constraint (x >= 64 / et.size, _("scalar index out of range"));

        switch (et.size)
          {
          case 8: bcdebits = 0x8; break;
          case 16: bcdebits = 0x1; break;
          case 32: bcdebits = 0x0; break;
          default: ;
          }

        bcdebits |= x << logsize;

        inst.instruction = 0xe000b10;
        do_vfp_cond_or_thumb ();
        inst.instruction |= LOW4 (dn) << 16;
        inst.instruction |= HI1 (dn) << 7;
        inst.instruction |= inst.operands[1].reg << 12;
        inst.instruction |= (bcdebits & 3) << 5;
        inst.instruction |= (bcdebits >> 2) << 21;
      }
      break;

    case 139:
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v2),
                  _(BAD_FPU));

      inst.instruction = 0xc400b10;
      do_vfp_cond_or_thumb ();
      inst.instruction |= LOW4 (inst.operands[0].reg);
      inst.instruction |= HI1 (inst.operands[0].reg) << 5;
      inst.instruction |= inst.operands[1].reg << 12;
      inst.instruction |= inst.operands[2].reg << 16;
      break;

    case 129:
      {
        struct neon_type_el et = neon_check_type (2, NS_NULL,
          N_EQK, N_S8 | N_S16 | N_U8 | N_U16 | N_32 | N_KEY);
        unsigned logsize = neon_logbits (et.size);
        unsigned dn = NEON_SCALAR_REG (inst.operands[1].reg);
        unsigned x = NEON_SCALAR_INDEX (inst.operands[1].reg);
        unsigned abcdebits = 0;

        constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v1),
                    _(BAD_FPU));
        constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_neon_ext_v1)
                    && et.size != 32, _(BAD_FPU));
        constraint (et.type == NT_invtype, _("bad type for scalar"));
        constraint (x >= 64 / et.size, _("scalar index out of range"));

        switch (et.size)
          {
          case 8: abcdebits = (et.type == NT_signed) ? 0x08 : 0x18; break;
          case 16: abcdebits = (et.type == NT_signed) ? 0x01 : 0x11; break;
          case 32: abcdebits = 0x00; break;
          default: ;
          }

        abcdebits |= x << logsize;
        inst.instruction = 0xe100b10;
        do_vfp_cond_or_thumb ();
        inst.instruction |= LOW4 (dn) << 16;
        inst.instruction |= HI1 (dn) << 7;
        inst.instruction |= inst.operands[0].reg << 12;
        inst.instruction |= (abcdebits & 3) << 5;
        inst.instruction |= (abcdebits >> 2) << 21;
      }
      break;

    case 131:
      constraint (!ARM_CPU_HAS_FEATURE (cpu_variant, fpu_vfp_ext_v2),
                  _(BAD_FPU));

      inst.instruction = 0xc500b10;
      do_vfp_cond_or_thumb ();
      inst.instruction |= inst.operands[0].reg << 12;
      inst.instruction |= inst.operands[1].reg << 16;
      inst.instruction |= LOW4 (inst.operands[2].reg);
      inst.instruction |= HI1 (inst.operands[2].reg) << 5;
      break;

    case 138:
      do_vfp_nsyn_opcode ("fcpys");
      break;

    case 136:
      ldconst = "fconsts";
      encode_fconstd:
      if (is_quarter_float (inst.operands[1].imm))
        {
          inst.operands[1].imm = neon_qfloat_bits (inst.operands[1].imm);
          do_vfp_nsyn_opcode (ldconst);
        }
      else
        first_error (_("immediate out of range"));
      break;

    case 132:
      do_vfp_nsyn_opcode ("fmrs");
      break;

    case 135:
      do_vfp_nsyn_opcode ("fmsr");
      break;





    case 130:
      constraint (inst.operands[3].reg != inst.operands[2].reg + 1,
                  _("VFP registers must be adjacent"));
      inst.operands[2].imm = 2;
      memset (&inst.operands[3], '\0', sizeof (inst.operands[3]));
      do_vfp_nsyn_opcode ("fmrrs");
      break;

    case 137:
      constraint (inst.operands[1].reg != inst.operands[0].reg + 1,
                  _("VFP registers must be adjacent"));
      inst.operands[1] = inst.operands[2];
      inst.operands[2] = inst.operands[3];
      inst.operands[0].imm = 2;
      memset (&inst.operands[3], '\0', sizeof (inst.operands[3]));
      do_vfp_nsyn_opcode ("fmsrr");
      break;

    default:
      abort ();
    }
}
