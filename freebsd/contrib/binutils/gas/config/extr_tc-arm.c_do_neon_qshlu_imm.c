
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {unsigned int size; scalar_t__ type; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; } ;


 int FALSE ;
 int NS_DDI ;
 int NS_NULL ;
 int NS_QQI ;
 scalar_t__ NT_unsigned ;
 int N_EQK ;
 int N_KEY ;
 int N_S16 ;
 int N_S32 ;
 int N_S64 ;
 int N_S8 ;
 int N_UNS ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_2__ inst ;
 struct neon_type_el neon_check_type (int,int,int,int) ;
 int neon_imm_shift (int ,int ,int ,struct neon_type_el,int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static void
do_neon_qshlu_imm (void)
{
  enum neon_shape rs = neon_select_shape (NS_DDI, NS_QQI, NS_NULL);
  struct neon_type_el et = neon_check_type (2, rs,
    N_EQK | N_UNS, N_S8 | N_S16 | N_S32 | N_S64 | N_KEY);
  int imm = inst.operands[2].imm;
  constraint (imm < 0 || (unsigned)imm >= et.size,
              _("immediate out of range for shift"));



  inst.instruction |= (et.type == NT_unsigned) << 8;

  neon_imm_shift (FALSE, 0, neon_quad (rs), et, imm);
}
