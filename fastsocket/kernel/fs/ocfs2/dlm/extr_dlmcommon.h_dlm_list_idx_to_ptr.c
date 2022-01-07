
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dlm_lock_resource {struct list_head blocked; struct list_head converting; struct list_head granted; } ;
typedef enum dlm_lockres_list { ____Placeholder_dlm_lockres_list } dlm_lockres_list ;


 int BUG () ;
 int DLM_BLOCKED_LIST ;
 int DLM_CONVERTING_LIST ;
 int DLM_GRANTED_LIST ;

__attribute__((used)) static inline struct list_head *
dlm_list_idx_to_ptr(struct dlm_lock_resource *res, enum dlm_lockres_list idx)
{
 struct list_head *ret = ((void*)0);
 if (idx == DLM_GRANTED_LIST)
  ret = &res->granted;
 else if (idx == DLM_CONVERTING_LIST)
  ret = &res->converting;
 else if (idx == DLM_BLOCKED_LIST)
  ret = &res->blocked;
 else
  BUG();
 return ret;
}
