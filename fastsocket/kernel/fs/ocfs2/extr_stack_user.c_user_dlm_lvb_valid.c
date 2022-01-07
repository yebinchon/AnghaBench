
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_flags; } ;
union ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;


 int DLM_SBF_VALNOTVALID ;

__attribute__((used)) static int user_dlm_lvb_valid(union ocfs2_dlm_lksb *lksb)
{
 int invalid = lksb->lksb_fsdlm.sb_flags & DLM_SBF_VALNOTVALID;

 return !invalid;
}
