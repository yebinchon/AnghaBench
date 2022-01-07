
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int log_print (char*,int) ;
 int misc_register (int *) ;
 int ops_lock ;
 int plock_dev_misc ;
 int recv_list ;
 int recv_wq ;
 int send_list ;
 int send_wq ;
 int spin_lock_init (int *) ;

int dlm_plock_init(void)
{
 int rv;

 spin_lock_init(&ops_lock);
 INIT_LIST_HEAD(&send_list);
 INIT_LIST_HEAD(&recv_list);
 init_waitqueue_head(&send_wq);
 init_waitqueue_head(&recv_wq);

 rv = misc_register(&plock_dev_misc);
 if (rv)
  log_print("dlm_plock_init: misc_register failed %d", rv);
 return rv;
}
