
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int first_device ;
 int ida_get_new_above (int *,int,int*) ;
 int ida_pre_get (int *,int ) ;
 int ida_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_generic_ids ;
 int net_mutex ;
 int register_pernet_operations (int ,struct pernet_operations*) ;

int register_pernet_gen_subsys(int *id, struct pernet_operations *ops)
{
 int rv;

 mutex_lock(&net_mutex);
again:
 rv = ida_get_new_above(&net_generic_ids, 1, id);
 if (rv < 0) {
  if (rv == -EAGAIN) {
   ida_pre_get(&net_generic_ids, GFP_KERNEL);
   goto again;
  }
  goto out;
 }
 rv = register_pernet_operations(first_device, ops);
 if (rv < 0)
  ida_remove(&net_generic_ids, *id);
out:
 mutex_unlock(&net_mutex);
 return rv;
}
