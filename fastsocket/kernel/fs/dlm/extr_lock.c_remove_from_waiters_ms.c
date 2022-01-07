
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_message {int m_type; } ;
struct dlm_ls {int ls_waiters_mutex; struct dlm_message ls_stub_ms; } ;
struct dlm_lkb {TYPE_1__* lkb_resource; } ;
struct TYPE_2__ {struct dlm_ls* res_ls; } ;


 int _remove_from_waiters (struct dlm_lkb*,int ,struct dlm_message*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int remove_from_waiters_ms(struct dlm_lkb *lkb, struct dlm_message *ms)
{
 struct dlm_ls *ls = lkb->lkb_resource->res_ls;
 int error;

 if (ms != &ls->ls_stub_ms)
  mutex_lock(&ls->ls_waiters_mutex);
 error = _remove_from_waiters(lkb, ms->m_type, ms);
 if (ms != &ls->ls_stub_ms)
  mutex_unlock(&ls->ls_waiters_mutex);
 return error;
}
