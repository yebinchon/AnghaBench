
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;


 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_MIGRATING ;
 int DLM_LOCK_RES_RECOVERING ;
 int __dlm_wait_on_lockres_flags (struct dlm_lock_resource*,int) ;

__attribute__((used)) static inline void __dlm_wait_on_lockres(struct dlm_lock_resource *res)
{
 __dlm_wait_on_lockres_flags(res, (DLM_LOCK_RES_IN_PROGRESS|
           DLM_LOCK_RES_RECOVERING|
       DLM_LOCK_RES_MIGRATING));
}
