
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int hb_events; } ;
struct dlm_ctxt {int dummy; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void __dlm_mle_detach_hb_events(struct dlm_ctxt *dlm,
           struct dlm_master_list_entry *mle)
{
 if (!list_empty(&mle->hb_events))
  list_del_init(&mle->hb_events);
}
