
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;


 int kmem_cache_free (int ,struct se_session*) ;
 int se_sess_cache ;

void transport_free_session(struct se_session *se_sess)
{
 kmem_cache_free(se_sess_cache, se_sess);
}
