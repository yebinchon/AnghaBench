
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ocfs2_dlm_lksb {TYPE_1__ lksb_o2dlm; } ;


 int dlm_status_to_errno (int ) ;

__attribute__((used)) static int o2cb_dlm_lock_status(union ocfs2_dlm_lksb *lksb)
{
 return dlm_status_to_errno(lksb->lksb_o2dlm.status);
}
