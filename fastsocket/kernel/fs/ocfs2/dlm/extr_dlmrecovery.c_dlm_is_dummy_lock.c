
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_migratable_lock {scalar_t__ cookie; scalar_t__ type; scalar_t__ convert_type; scalar_t__ highest_blocked; scalar_t__ list; int node; } ;
struct dlm_ctxt {int dummy; } ;


 scalar_t__ DLM_BLOCKED_LIST ;
 scalar_t__ LKM_IVMODE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int dlm_is_dummy_lock(struct dlm_ctxt *dlm,
        struct dlm_migratable_lock *ml,
        u8 *nodenum)
{
 if (unlikely(ml->cookie == 0 &&
     ml->type == LKM_IVMODE &&
     ml->convert_type == LKM_IVMODE &&
     ml->highest_blocked == LKM_IVMODE &&
     ml->list == DLM_BLOCKED_LIST)) {
  *nodenum = ml->node;
  return 1;
 }
 return 0;
}
