
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ERR (int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int log_print (char*,int) ;
 int recv_workqueue ;
 int send_workqueue ;

__attribute__((used)) static int work_start(void)
{
 int error;
 recv_workqueue = create_singlethread_workqueue("dlm_recv");
 error = IS_ERR(recv_workqueue);
 if (error) {
  log_print("can't start dlm_recv %d", error);
  return error;
 }

 send_workqueue = create_singlethread_workqueue("dlm_send");
 error = IS_ERR(send_workqueue);
 if (error) {
  log_print("can't start dlm_send %d", error);
  destroy_workqueue(recv_workqueue);
  return error;
 }

 return 0;
}
