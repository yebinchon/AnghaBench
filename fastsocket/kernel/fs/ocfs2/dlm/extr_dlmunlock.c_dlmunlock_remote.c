
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lockstatus {int dummy; } ;
struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int dummy; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int dlmunlock_common (struct dlm_ctxt*,struct dlm_lock_resource*,struct dlm_lock*,struct dlm_lockstatus*,int,int*,int ) ;

__attribute__((used)) static inline enum dlm_status dlmunlock_remote(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res,
       struct dlm_lock *lock,
       struct dlm_lockstatus *lksb,
       int flags, int *call_ast)
{
 return dlmunlock_common(dlm, res, lock, lksb, flags, call_ast, 0);
}
