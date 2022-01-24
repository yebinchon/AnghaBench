#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct neon_type_el {int size; int /*<<< orphan*/  type; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; int /*<<< orphan*/ * error; } ;
struct TYPE_3__ {unsigned int reg; int imm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* BAD_FPU ; 
 int /*<<< orphan*/  FAIL ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
#define  NS_DD 141 
#define  NS_DI 140 
#define  NS_DRR 139 
#define  NS_FF 138 
#define  NS_FFRR 137 
#define  NS_FI 136 
#define  NS_FR 135 
 int NS_NULL ; 
#define  NS_QI 134 
#define  NS_QQ 133 
#define  NS_RF 132 
#define  NS_RRD 131 
#define  NS_RRFF 130 
#define  NS_RS 129 
#define  NS_SR 128 
 int /*<<< orphan*/  NT_float ; 
 int /*<<< orphan*/  NT_invtype ; 
 int /*<<< orphan*/  NT_signed ; 
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
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_variant ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpu_neon_ext_v1 ; 
 int /*<<< orphan*/  fpu_vfp_ext_v1 ; 
 int /*<<< orphan*/  fpu_vfp_ext_v2 ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char,int) ; 
 struct neon_type_el FUNC13 (int,int,int,int) ; 
 void* FUNC14 (int) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void
FUNC21 (void)
{
  enum neon_shape rs = FUNC19 (NS_RRFF, NS_FFRR, NS_DRR, NS_RRD,
    NS_QQ, NS_DD, NS_QI, NS_DI, NS_SR, NS_RS, NS_FF, NS_FI, NS_RF, NS_FR,
    NS_NULL);
  struct neon_type_el et;
  const char *ldconst = 0;

  switch (rs)
    {
    case NS_DD:  /* case 1/9.  */
      et = FUNC13 (2, rs, N_EQK, N_F64 | N_KEY);
      /* It is not an error here if no type is given.  */
      inst.error = NULL;
      if (et.type == NT_float && et.size == 64)
        {
          FUNC9 ("fcpyd");
          break;
        }
      /* fall through.  */

    case NS_QQ:  /* case 0/1.  */
      {
        if (FUNC20 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;
        /* The architecture manual I have doesn't explicitly state which
           value the U bit should have for register->register moves, but
           the equivalent VORR instruction has U = 0, so do that.  */
        inst.instruction = 0x0200110;
        inst.instruction |= FUNC2 (inst.operands[0].reg) << 12;
        inst.instruction |= FUNC1 (inst.operands[0].reg) << 22;
        inst.instruction |= FUNC2 (inst.operands[1].reg);
        inst.instruction |= FUNC1 (inst.operands[1].reg) << 5;
        inst.instruction |= FUNC2 (inst.operands[1].reg) << 16;
        inst.instruction |= FUNC1 (inst.operands[1].reg) << 7;
        inst.instruction |= FUNC18 (rs) << 6;

        inst.instruction = FUNC14 (inst.instruction);
      }
      break;
        
    case NS_DI:  /* case 3/11.  */
      et = FUNC13 (2, rs, N_EQK, N_F64 | N_KEY);
      inst.error = NULL;
      if (et.type == NT_float && et.size == 64)
        {
          /* case 11 (fconstd).  */
          ldconst = "fconstd";
          goto encode_fconstd;
        }
      /* fall through.  */

    case NS_QI:  /* case 2/3.  */
      if (FUNC20 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
        return;
      inst.instruction = 0x0800010;
      FUNC16 ();
      inst.instruction = FUNC14 (inst.instruction);
      break;
    
    case NS_SR:  /* case 4.  */
      {
        unsigned bcdebits = 0;
        struct neon_type_el et = FUNC13 (2, NS_NULL,
          N_8 | N_16 | N_32 | N_KEY, N_EQK);
        int logsize = FUNC15 (et.size);
        unsigned dn = FUNC4 (inst.operands[0].reg);
        unsigned x = FUNC3 (inst.operands[0].reg);

        FUNC7 (!FUNC0 (cpu_variant, fpu_vfp_ext_v1),
                    FUNC5(BAD_FPU));
        FUNC7 (!FUNC0 (cpu_variant, fpu_neon_ext_v1)
                    && et.size != 32, FUNC5(BAD_FPU));
        FUNC7 (et.type == NT_invtype, FUNC5("bad type for scalar"));
        FUNC7 (x >= 64 / et.size, FUNC5("scalar index out of range"));

        switch (et.size)
          {
          case 8:  bcdebits = 0x8; break;
          case 16: bcdebits = 0x1; break;
          case 32: bcdebits = 0x0; break;
          default: ;
          }

        bcdebits |= x << logsize;

        inst.instruction = 0xe000b10;
        FUNC8 ();
        inst.instruction |= FUNC2 (dn) << 16;
        inst.instruction |= FUNC1 (dn) << 7;
        inst.instruction |= inst.operands[1].reg << 12;
        inst.instruction |= (bcdebits & 3) << 5;
        inst.instruction |= (bcdebits >> 2) << 21;
      }
      break;
    
    case NS_DRR:  /* case 5 (fmdrr).  */
      FUNC7 (!FUNC0 (cpu_variant, fpu_vfp_ext_v2),
                  FUNC5(BAD_FPU));

      inst.instruction = 0xc400b10;
      FUNC8 ();
      inst.instruction |= FUNC2 (inst.operands[0].reg);
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 5;
      inst.instruction |= inst.operands[1].reg << 12;
      inst.instruction |= inst.operands[2].reg << 16;
      break;
    
    case NS_RS:  /* case 6.  */
      {
        struct neon_type_el et = FUNC13 (2, NS_NULL,
          N_EQK, N_S8 | N_S16 | N_U8 | N_U16 | N_32 | N_KEY);
        unsigned logsize = FUNC15 (et.size);
        unsigned dn = FUNC4 (inst.operands[1].reg);
        unsigned x = FUNC3 (inst.operands[1].reg);
        unsigned abcdebits = 0;

        FUNC7 (!FUNC0 (cpu_variant, fpu_vfp_ext_v1),
                    FUNC5(BAD_FPU));
        FUNC7 (!FUNC0 (cpu_variant, fpu_neon_ext_v1)
                    && et.size != 32, FUNC5(BAD_FPU));
        FUNC7 (et.type == NT_invtype, FUNC5("bad type for scalar"));
        FUNC7 (x >= 64 / et.size, FUNC5("scalar index out of range"));

        switch (et.size)
          {
          case 8:  abcdebits = (et.type == NT_signed) ? 0x08 : 0x18; break;
          case 16: abcdebits = (et.type == NT_signed) ? 0x01 : 0x11; break;
          case 32: abcdebits = 0x00; break;
          default: ;
          }

        abcdebits |= x << logsize;
        inst.instruction = 0xe100b10;
        FUNC8 ();
        inst.instruction |= FUNC2 (dn) << 16;
        inst.instruction |= FUNC1 (dn) << 7;
        inst.instruction |= inst.operands[0].reg << 12;
        inst.instruction |= (abcdebits & 3) << 5;
        inst.instruction |= (abcdebits >> 2) << 21;
      }
      break;
    
    case NS_RRD:  /* case 7 (fmrrd).  */
      FUNC7 (!FUNC0 (cpu_variant, fpu_vfp_ext_v2),
                  FUNC5(BAD_FPU));

      inst.instruction = 0xc500b10;
      FUNC8 ();
      inst.instruction |= inst.operands[0].reg << 12;
      inst.instruction |= inst.operands[1].reg << 16;
      inst.instruction |= FUNC2 (inst.operands[2].reg);
      inst.instruction |= FUNC1 (inst.operands[2].reg) << 5;
      break;
    
    case NS_FF:  /* case 8 (fcpys).  */
      FUNC9 ("fcpys");
      break;
    
    case NS_FI:  /* case 10 (fconsts).  */
      ldconst = "fconsts";
      encode_fconstd:
      if (FUNC11 (inst.operands[1].imm))
        {
          inst.operands[1].imm = FUNC17 (inst.operands[1].imm);
          FUNC9 (ldconst);
        }
      else
        FUNC10 (FUNC5("immediate out of range"));
      break;
    
    case NS_RF:  /* case 12 (fmrs).  */
      FUNC9 ("fmrs");
      break;
    
    case NS_FR:  /* case 13 (fmsr).  */
      FUNC9 ("fmsr");
      break;
    
    /* The encoders for the fmrrs and fmsrr instructions expect three operands
       (one of which is a list), but we have parsed four.  Do some fiddling to
       make the operands what do_vfp_reg2_from_sp2 and do_vfp_sp2_from_reg2
       expect.  */
    case NS_RRFF:  /* case 14 (fmrrs).  */
      FUNC7 (inst.operands[3].reg != inst.operands[2].reg + 1,
                  FUNC5("VFP registers must be adjacent"));
      inst.operands[2].imm = 2;
      FUNC12 (&inst.operands[3], '\0', sizeof (inst.operands[3]));
      FUNC9 ("fmrrs");
      break;
    
    case NS_FFRR:  /* case 15 (fmsrr).  */
      FUNC7 (inst.operands[1].reg != inst.operands[0].reg + 1,
                  FUNC5("VFP registers must be adjacent"));
      inst.operands[1] = inst.operands[2];
      inst.operands[2] = inst.operands[3];
      inst.operands[0].imm = 2;
      FUNC12 (&inst.operands[3], '\0', sizeof (inst.operands[3]));
      FUNC9 ("fmsrr");
      break;
    
    default:
      FUNC6 ();
    }
}