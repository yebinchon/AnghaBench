
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 scalar_t__ FAIL ;
 int HI1 (int ) ;
 int LOW4 (int ) ;
 int NEON_CHECK_ARCH ;
 int NEON_CHECK_CC ;
 int NS_DD ;
 int NS_NULL ;
 int NS_QQ ;
 scalar_t__ NT_float ;
 int N_EQK ;
 int N_F32 ;
 int N_KEY ;
 int N_S16 ;
 int N_S32 ;
 int N_S8 ;
 scalar_t__ SUCCESS ;
 int do_vfp_nsyn_abs_neg ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int ,int) ;
 int neon_dp_fixup (int) ;
 int neon_logbits (int ) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 scalar_t__ try_vfp_nsyn (int,int ) ;
 scalar_t__ vfp_or_neon_is_neon (int) ;

__attribute__((used)) static void
do_neon_abs_neg (void)
{
  enum neon_shape rs;
  struct neon_type_el et;

  if (try_vfp_nsyn (2, do_vfp_nsyn_abs_neg) == SUCCESS)
    return;

  if (vfp_or_neon_is_neon (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  rs = neon_select_shape (NS_DD, NS_QQ, NS_NULL);
  et = neon_check_type (2, rs, N_EQK, N_S8 | N_S16 | N_S32 | N_F32 | N_KEY);

  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= LOW4 (inst.operands[1].reg);
  inst.instruction |= HI1 (inst.operands[1].reg) << 5;
  inst.instruction |= neon_quad (rs) << 6;
  inst.instruction |= (et.type == NT_float) << 10;
  inst.instruction |= neon_logbits (et.size) << 18;

  inst.instruction = neon_dp_fixup (inst.instruction);
}
