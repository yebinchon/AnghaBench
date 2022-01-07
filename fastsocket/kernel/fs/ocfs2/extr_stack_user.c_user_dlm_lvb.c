
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sb_lvbptr; } ;
union ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;
struct dlm_lksb {int dummy; } ;



__attribute__((used)) static void *user_dlm_lvb(union ocfs2_dlm_lksb *lksb)
{
 if (!lksb->lksb_fsdlm.sb_lvbptr)
  lksb->lksb_fsdlm.sb_lvbptr = (char *)lksb +
          sizeof(struct dlm_lksb);
 return (void *)(lksb->lksb_fsdlm.sb_lvbptr);
}
