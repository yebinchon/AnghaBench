
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {int size; } ;
struct TYPE_2__ {int instruction; } ;


 int NEON_ENC_INTEGER (int ) ;
 int NS_DQ ;
 int N_EQK ;
 int N_HLF ;
 int N_KEY ;
 int N_S16 ;
 int N_S32 ;
 int N_S64 ;
 int N_UNS ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int) ;
 int neon_two_same (int ,int,int) ;

__attribute__((used)) static void
do_neon_qmovun (void)
{
  struct neon_type_el et = neon_check_type (2, NS_DQ,
    N_EQK | N_HLF | N_UNS, N_S16 | N_S32 | N_S64 | N_KEY);

  inst.instruction = NEON_ENC_INTEGER (inst.instruction);
  neon_two_same (0, 1, et.size / 2);
}
