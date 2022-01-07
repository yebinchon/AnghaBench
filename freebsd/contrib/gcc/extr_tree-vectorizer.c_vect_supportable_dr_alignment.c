
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct data_reference {int dummy; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum dr_alignment_support { ____Placeholder_dr_alignment_support } dr_alignment_support ;
struct TYPE_12__ {TYPE_3__* handlers; } ;
struct TYPE_8__ {scalar_t__ (* builtin_mask_for_load ) () ;} ;
struct TYPE_11__ {TYPE_2__ vectorize; } ;
struct TYPE_10__ {TYPE_1__* handlers; } ;
struct TYPE_9__ {scalar_t__ insn_code; } ;
struct TYPE_7__ {scalar_t__ insn_code; } ;


 scalar_t__ CODE_FOR_nothing ;
 scalar_t__ DR_IS_READ (struct data_reference*) ;
 int DR_STMT (struct data_reference*) ;
 int STMT_VINFO_VECTYPE (int ) ;
 scalar_t__ TYPE_MODE (int ) ;
 scalar_t__ aligned_access_p (struct data_reference*) ;
 int dr_aligned ;
 int dr_unaligned_software_pipeline ;
 int dr_unaligned_supported ;
 int dr_unaligned_unsupported ;
 TYPE_6__* movmisalign_optab ;
 scalar_t__ stub1 () ;
 TYPE_5__ targetm ;
 TYPE_4__* vec_realign_load_optab ;
 int vinfo_for_stmt (int ) ;

enum dr_alignment_support
vect_supportable_dr_alignment (struct data_reference *dr)
{
  tree vectype = STMT_VINFO_VECTYPE (vinfo_for_stmt (DR_STMT (dr)));
  enum machine_mode mode = (int) TYPE_MODE (vectype);

  if (aligned_access_p (dr))
    return dr_aligned;



  if (DR_IS_READ (dr))
    {
      if (vec_realign_load_optab->handlers[mode].insn_code != CODE_FOR_nothing
   && (!targetm.vectorize.builtin_mask_for_load
       || targetm.vectorize.builtin_mask_for_load ()))
 return dr_unaligned_software_pipeline;

      if (movmisalign_optab->handlers[mode].insn_code != CODE_FOR_nothing)

 return dr_unaligned_supported;
    }


  return dr_unaligned_unsupported;
}
