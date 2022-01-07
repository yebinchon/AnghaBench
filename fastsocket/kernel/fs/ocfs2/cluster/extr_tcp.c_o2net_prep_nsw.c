
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_status_wait {scalar_t__ ns_status; int ns_sys_status; int ns_wq; int ns_node_item; int ns_id; } ;
struct o2net_node {int nn_lock; int nn_status_list; int nn_status_idr; } ;


 int EAGAIN ;
 int GFP_ATOMIC ;
 int O2NET_ERR_NONE ;
 int idr_get_new (int *,struct o2net_status_wait*,int *) ;
 int idr_pre_get (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int o2net_prep_nsw(struct o2net_node *nn, struct o2net_status_wait *nsw)
{
 int ret = 0;

 do {
  if (!idr_pre_get(&nn->nn_status_idr, GFP_ATOMIC)) {
   ret = -EAGAIN;
   break;
  }
  spin_lock(&nn->nn_lock);
  ret = idr_get_new(&nn->nn_status_idr, nsw, &nsw->ns_id);
  if (ret == 0)
   list_add_tail(&nsw->ns_node_item,
          &nn->nn_status_list);
  spin_unlock(&nn->nn_lock);
 } while (ret == -EAGAIN);

 if (ret == 0) {
  init_waitqueue_head(&nsw->ns_wq);
  nsw->ns_sys_status = O2NET_ERR_NONE;
  nsw->ns_status = 0;
 }

 return ret;
}
