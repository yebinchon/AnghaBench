
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int WAKE_LOCK_SUSPEND ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ initialized ;
 int local_endpoints ;
 int msm_rpcrouter_exit_devices () ;
 int msm_rpcrouter_init_devices () ;
 int newserver_wait ;
 int queue_work (int ,int *) ;
 int remote_endpoints ;
 int rpcrouter_smdnotify ;
 int rpcrouter_wake_lock ;
 int rpcrouter_workqueue ;
 int smd_channel ;
 int smd_open (char*,int *,int *,int ) ;
 int smd_wait ;
 int wake_lock_init (int *,int ,char*) ;
 int work_read_data ;

__attribute__((used)) static int msm_rpcrouter_probe(struct platform_device *pdev)
{
 int rc;


 INIT_LIST_HEAD(&local_endpoints);
 INIT_LIST_HEAD(&remote_endpoints);

 init_waitqueue_head(&newserver_wait);
 init_waitqueue_head(&smd_wait);
 wake_lock_init(&rpcrouter_wake_lock, WAKE_LOCK_SUSPEND, "SMD_RPCCALL");

 rpcrouter_workqueue = create_singlethread_workqueue("rpcrouter");
 if (!rpcrouter_workqueue)
  return -ENOMEM;

 rc = msm_rpcrouter_init_devices();
 if (rc < 0)
  goto fail_destroy_workqueue;


 initialized = 0;
 rc = smd_open("SMD_RPCCALL", &smd_channel, ((void*)0), rpcrouter_smdnotify);
 if (rc < 0)
  goto fail_remove_devices;

 queue_work(rpcrouter_workqueue, &work_read_data);
 return 0;

 fail_remove_devices:
 msm_rpcrouter_exit_devices();
 fail_destroy_workqueue:
 destroy_workqueue(rpcrouter_workqueue);
 return rc;
}
