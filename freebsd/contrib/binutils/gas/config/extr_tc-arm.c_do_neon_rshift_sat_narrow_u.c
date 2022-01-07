
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;


 int NS_DQI ;
 int N_EQK ;
 int N_HLF ;
 int N_KEY ;
 int N_MNEM_vqmovun ;
 int N_S16 ;
 int N_S32 ;
 int N_S64 ;
 int N_UNS ;
 int TRUE ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int do_neon_qmovun () ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int) ;
 int neon_imm_shift (int ,int,int ,struct neon_type_el,int) ;

__attribute__((used)) static void
do_neon_rshift_sat_narrow_u (void)
{


  struct neon_type_el et = neon_check_type (2, NS_DQI,
    N_EQK | N_HLF | N_UNS, N_S16 | N_S32 | N_S64 | N_KEY);
  int imm = inst.operands[2].imm;


  et.size /= 2;



  if (imm == 0)
    {
      inst.operands[2].present = 0;
      inst.instruction = N_MNEM_vqmovun;
      do_neon_qmovun ();
      return;
    }

  constraint (imm < 1 || (unsigned)imm > et.size,
              _("immediate out of range"));



  neon_imm_shift (TRUE, 1, 0, et, et.size - imm);
}
