
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct nf_logger {int * list; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int NFPROTO_NUMPROTO ;
 size_t NFPROTO_UNSPEC ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 int * nf_loggers ;
 int * nf_loggers_l ;
 int rcu_assign_pointer (int ,struct nf_logger*) ;
 struct nf_logger* rcu_dereference (int ) ;

int nf_log_register(u_int8_t pf, struct nf_logger *logger)
{
 const struct nf_logger *llog;
 int i;

 if (pf >= ARRAY_SIZE(nf_loggers))
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(logger->list); i++)
  INIT_LIST_HEAD(&logger->list[i]);

 mutex_lock(&nf_log_mutex);

 if (pf == NFPROTO_UNSPEC) {
  for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++)
   list_add_tail(&(logger->list[i]), &(nf_loggers_l[i]));
 } else {

  list_add_tail(&logger->list[pf], &nf_loggers_l[pf]);
  llog = rcu_dereference(nf_loggers[pf]);
  if (llog == ((void*)0))
   rcu_assign_pointer(nf_loggers[pf], logger);
 }

 mutex_unlock(&nf_log_mutex);

 return 0;
}
