
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lksb {int dummy; } ;
struct TYPE_2__ {struct dlm_lksb lksb_fsdlm; } ;
struct ocfs2_lock_res {TYPE_1__ l_lksb; } ;



__attribute__((used)) static struct dlm_lksb *fsdlm_astarg_to_lksb(void *astarg)
{
 struct ocfs2_lock_res *res = astarg;
 return &res->l_lksb.lksb_fsdlm;
}
