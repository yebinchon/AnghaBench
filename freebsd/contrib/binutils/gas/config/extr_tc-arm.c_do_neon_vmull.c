
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;


 int NEON_ENC_INTEGER (int ) ;
 int NEON_ENC_POLY (int ) ;
 int NS_QDD ;
 scalar_t__ NT_poly ;
 int N_DBL ;
 int N_EQK ;
 int N_KEY ;
 int N_P8 ;
 int N_SU_32 ;
 int do_neon_mac_maybe_scalar_long () ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int,int) ;
 int neon_mixed_length (struct neon_type_el,int ) ;

__attribute__((used)) static void
do_neon_vmull (void)
{
  if (inst.operands[2].isscalar)
    do_neon_mac_maybe_scalar_long ();
  else
    {
      struct neon_type_el et = neon_check_type (3, NS_QDD,
        N_EQK | N_DBL, N_EQK, N_SU_32 | N_P8 | N_KEY);
      if (et.type == NT_poly)
        inst.instruction = NEON_ENC_POLY (inst.instruction);
      else
        inst.instruction = NEON_ENC_INTEGER (inst.instruction);


      neon_mixed_length (et, et.size);
    }
}
