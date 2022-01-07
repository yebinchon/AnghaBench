
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nf_logger {int * list; } const nf_logger ;


 int ARRAY_SIZE (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 int * nf_loggers ;
 int rcu_assign_pointer (int ,int *) ;
 struct nf_logger const* rcu_dereference (int ) ;
 int synchronize_rcu () ;

void nf_log_unregister(struct nf_logger *logger)
{
 const struct nf_logger *c_logger;
 int i;

 mutex_lock(&nf_log_mutex);
 for (i = 0; i < ARRAY_SIZE(nf_loggers); i++) {
  c_logger = rcu_dereference(nf_loggers[i]);
  if (c_logger == logger)
   rcu_assign_pointer(nf_loggers[i], ((void*)0));
  list_del(&logger->list[i]);
 }
 mutex_unlock(&nf_log_mutex);

 synchronize_rcu();
}
