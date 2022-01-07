
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isreg; } ;


 void* NEON_ENC_DOUBLE (int) ;
 void* NEON_ENC_SINGLE (int) ;
 int NS_DD ;
 int NS_DI ;
 int NS_FF ;
 int NS_FI ;
 int NS_NULL ;
 int N_EQK ;
 int N_F32 ;
 int N_F64 ;
 int N_KEY ;


 int const N_MNEM_vcmpez ;
 int const N_MNEM_vcmpz ;
 int N_VFP ;
 int abort () ;
 int do_vfp_cond_or_thumb () ;
 int do_vfp_dp_rd () ;
 int do_vfp_dp_rd_rm () ;
 int do_vfp_sp_compare_z () ;
 int do_vfp_sp_monadic () ;
 TYPE_2__ inst ;
 int neon_check_type (int,int,int,int) ;
 int neon_select_shape (int,int ,int ) ;

__attribute__((used)) static void
do_vfp_nsyn_cmp (void)
{
  if (inst.operands[1].isreg)
    {
      enum neon_shape rs = neon_select_shape (NS_FF, NS_DD, NS_NULL);
      neon_check_type (2, rs, N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);

      if (rs == NS_FF)
        {
          inst.instruction = NEON_ENC_SINGLE (inst.instruction);
          do_vfp_sp_monadic ();
        }
      else
        {
          inst.instruction = NEON_ENC_DOUBLE (inst.instruction);
          do_vfp_dp_rd_rm ();
        }
    }
  else
    {
      enum neon_shape rs = neon_select_shape (NS_FI, NS_DI, NS_NULL);
      neon_check_type (2, rs, N_F32 | N_F64 | N_KEY | N_VFP, N_EQK);

      switch (inst.instruction & 0x0fffffff)
        {
        case 129:
          inst.instruction += N_MNEM_vcmpz - 129;
          break;
        case 128:
          inst.instruction += N_MNEM_vcmpez - 128;
          break;
        default:
          abort ();
        }

      if (rs == NS_FI)
        {
          inst.instruction = NEON_ENC_SINGLE (inst.instruction);
          do_vfp_sp_compare_z ();
        }
      else
        {
          inst.instruction = NEON_ENC_DOUBLE (inst.instruction);
          do_vfp_dp_rd ();
        }
    }
  do_vfp_cond_or_thumb ();
}
