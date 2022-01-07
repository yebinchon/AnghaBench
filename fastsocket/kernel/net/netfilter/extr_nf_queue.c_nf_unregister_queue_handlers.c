
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct nf_queue_handler {int dummy; } ;


 size_t ARRAY_SIZE (struct nf_queue_handler const**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nf_queue_handler const** queue_handler ;
 int queue_handler_mutex ;
 int rcu_assign_pointer (struct nf_queue_handler const*,int *) ;
 int synchronize_rcu () ;

void nf_unregister_queue_handlers(const struct nf_queue_handler *qh)
{
 u_int8_t pf;

 mutex_lock(&queue_handler_mutex);
 for (pf = 0; pf < ARRAY_SIZE(queue_handler); pf++) {
  if (queue_handler[pf] == qh)
   rcu_assign_pointer(queue_handler[pf], ((void*)0));
 }
 mutex_unlock(&queue_handler_mutex);

 synchronize_rcu();
}
