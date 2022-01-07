
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct nf_queue_handler {int dummy; } ;


 size_t ARRAY_SIZE (struct nf_queue_handler const**) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nf_queue_handler const** queue_handler ;
 int queue_handler_mutex ;
 int rcu_assign_pointer (struct nf_queue_handler const*,int *) ;
 int synchronize_rcu () ;

int nf_unregister_queue_handler(u_int8_t pf, const struct nf_queue_handler *qh)
{
 if (pf >= ARRAY_SIZE(queue_handler))
  return -EINVAL;

 mutex_lock(&queue_handler_mutex);
 if (queue_handler[pf] && queue_handler[pf] != qh) {
  mutex_unlock(&queue_handler_mutex);
  return -EINVAL;
 }

 rcu_assign_pointer(queue_handler[pf], ((void*)0));
 mutex_unlock(&queue_handler_mutex);

 synchronize_rcu();

 return 0;
}
