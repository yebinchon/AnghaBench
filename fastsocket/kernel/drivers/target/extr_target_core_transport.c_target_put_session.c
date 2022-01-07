
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_session {int sess_kref; struct se_portal_group* se_tpg; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct TYPE_2__ {int (* put_session ) (struct se_session*) ;} ;


 int kref_put (int *,int ) ;
 int stub1 (struct se_session*) ;
 int target_release_session ;

void target_put_session(struct se_session *se_sess)
{
 struct se_portal_group *tpg = se_sess->se_tpg;

 if (tpg->se_tpg_tfo->put_session != ((void*)0)) {
  tpg->se_tpg_tfo->put_session(se_sess);
  return;
 }
 kref_put(&se_sess->sess_kref, target_release_session);
}
