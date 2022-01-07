
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plock_op {int list; int info; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int ops_lock ;
 int send_list ;
 int send_wq ;
 int set_version (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void send_op(struct plock_op *op)
{
 set_version(&op->info);
 INIT_LIST_HEAD(&op->list);
 spin_lock(&ops_lock);
 list_add_tail(&op->list, &send_list);
 spin_unlock(&ops_lock);
 wake_up(&send_wq);
}
