
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;


 int FALSE ;
 int NS_DQI ;
 int N_EQK ;
 int N_HLF ;
 int N_I16 ;
 int N_I32 ;
 int N_I64 ;
 int N_KEY ;
 int N_MNEM_vmovn ;
 int _ (char*) ;
 int constraint (int,int ) ;
 int do_neon_movn () ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int) ;
 int neon_imm_shift (int ,int ,int ,struct neon_type_el,int) ;

__attribute__((used)) static void
do_neon_rshift_narrow (void)
{
  struct neon_type_el et = neon_check_type (2, NS_DQI,
    N_EQK | N_HLF, N_I16 | N_I32 | N_I64 | N_KEY);
  int imm = inst.operands[2].imm;


  et.size /= 2;



  if (imm == 0)
    {
      inst.operands[2].present = 0;
      inst.instruction = N_MNEM_vmovn;
      do_neon_movn ();
      return;
    }

  constraint (imm < 1 || (unsigned)imm > et.size,
              _("immediate out of range for narrowing operation"));
  neon_imm_shift (FALSE, 0, 0, et, et.size - imm);
}
