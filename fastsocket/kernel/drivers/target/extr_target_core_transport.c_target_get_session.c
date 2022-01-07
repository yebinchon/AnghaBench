
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_kref; } ;


 int kref_get (int *) ;

void target_get_session(struct se_session *se_sess)
{
 kref_get(&se_sess->sess_kref);
}
