
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int nd_num; } ;
struct o2net_node {int nn_still_up; int nn_connect_work; int nn_connect_expired; int nn_lock; int nn_timeout; } ;


 int ENOTCONN ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work (int *) ;
 int flush_workqueue (scalar_t__) ;
 struct o2net_node* o2net_nn_from_num (int ) ;
 int o2net_set_nn_state (struct o2net_node*,int *,int ,int ) ;
 scalar_t__ o2net_wq ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void o2net_disconnect_node(struct o2nm_node *node)
{
 struct o2net_node *nn = o2net_nn_from_num(node->nd_num);


 spin_lock(&nn->nn_lock);
 atomic_set(&nn->nn_timeout, 0);
 o2net_set_nn_state(nn, ((void*)0), 0, -ENOTCONN);
 spin_unlock(&nn->nn_lock);

 if (o2net_wq) {
  cancel_delayed_work(&nn->nn_connect_expired);
  cancel_delayed_work(&nn->nn_connect_work);
  cancel_delayed_work(&nn->nn_still_up);
  flush_workqueue(o2net_wq);
 }
}
