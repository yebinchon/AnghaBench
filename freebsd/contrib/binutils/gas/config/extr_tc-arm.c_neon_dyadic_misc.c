
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; int size; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
typedef enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;
struct TYPE_2__ {int instruction; } ;


 int NEON_ENC_FLOAT (int ) ;
 int NEON_ENC_INTEGER (int ) ;
 int NS_DDD ;
 int NS_NULL ;
 int NS_QQQ ;
 scalar_t__ NT_float ;
 unsigned int N_EQK ;
 unsigned int N_KEY ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int,unsigned int,unsigned int,unsigned int) ;
 int neon_quad (int) ;
 int neon_select_shape (int ,int ,int ) ;
 int neon_three_same (int ,int,int) ;

__attribute__((used)) static void
neon_dyadic_misc (enum neon_el_type ubit_meaning, unsigned types,
                  unsigned destbits)
{
  enum neon_shape rs = neon_select_shape (NS_DDD, NS_QQQ, NS_NULL);
  struct neon_type_el et = neon_check_type (3, rs, N_EQK | destbits, N_EQK,
                                            types | N_KEY);
  if (et.type == NT_float)
    {
      inst.instruction = NEON_ENC_FLOAT (inst.instruction);
      neon_three_same (neon_quad (rs), 0, -1);
    }
  else
    {
      inst.instruction = NEON_ENC_INTEGER (inst.instruction);
      neon_three_same (neon_quad (rs), et.type == ubit_meaning, et.size);
    }
}
