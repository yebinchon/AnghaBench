
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neon_type_el {scalar_t__ type; } ;
typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int * error; } ;


 int FAIL ;
 int NS_DD ;
 int NS_DDD ;
 int NS_FF ;
 int NS_FFF ;
 int NS_NULL ;
 scalar_t__ NT_invtype ;
 int N_EQK ;
 int N_F32 ;
 int N_F64 ;
 int N_KEY ;
 int N_VFP ;
 int SUCCESS ;
 int abort () ;
 TYPE_1__ inst ;
 struct neon_type_el neon_check_type (int,int,int,int,...) ;
 int neon_select_shape (int ,int ,int ) ;

__attribute__((used)) static int
try_vfp_nsyn (int args, void (*pfn) (enum neon_shape))
{
  enum neon_shape rs;
  struct neon_type_el et;

  switch (args)
    {
    case 2:
      rs = neon_select_shape (NS_FF, NS_DD, NS_NULL);
      et = neon_check_type (2, rs,
        N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      break;

    case 3:
      rs = neon_select_shape (NS_FFF, NS_DDD, NS_NULL);
      et = neon_check_type (3, rs,
        N_EQK | N_VFP, N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      break;

    default:
      abort ();
    }

  if (et.type != NT_invtype)
    {
      pfn (rs);
      return SUCCESS;
    }
  else
    inst.error = ((void*)0);

  return FAIL;
}
