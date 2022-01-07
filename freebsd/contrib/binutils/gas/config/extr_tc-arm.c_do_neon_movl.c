
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {int size; scalar_t__ type; } ;
struct TYPE_2__ {unsigned int instruction; } ;


 int NS_QD ;
 scalar_t__ NT_unsigned ;
 int N_DBL ;
 int N_EQK ;
 int N_KEY ;
 int N_SU_32 ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int ,int,int) ;
 int neon_two_same (int ,int,int) ;

__attribute__((used)) static void
do_neon_movl (void)
{
  struct neon_type_el et = neon_check_type (2, NS_QD,
    N_EQK | N_DBL, N_SU_32 | N_KEY);
  unsigned sizebits = et.size >> 3;
  inst.instruction |= sizebits << 19;
  neon_two_same (0, et.type == NT_unsigned, -1);
}
