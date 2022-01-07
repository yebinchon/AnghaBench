
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_ECANCEL ;
 int DLM_EUNLOCK ;
 scalar_t__ is_overlap_unlock (struct dlm_lkb*) ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int ) ;

__attribute__((used)) static inline void queue_cast_overlap(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 queue_cast(r, lkb,
     is_overlap_unlock(lkb) ? -DLM_EUNLOCK : -DLM_ECANCEL);
}
