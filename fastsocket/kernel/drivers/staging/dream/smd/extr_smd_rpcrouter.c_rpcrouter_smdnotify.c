
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SMD_EVENT_DATA ;
 scalar_t__ rpcrouter_need_len ;
 int rpcrouter_wake_lock ;
 int smd_channel ;
 scalar_t__ smd_read_avail (int ) ;
 int smd_wait ;
 int wake_lock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void rpcrouter_smdnotify(void *_dev, unsigned event)
{
 if (event != SMD_EVENT_DATA)
  return;

 if (smd_read_avail(smd_channel) >= rpcrouter_need_len)
  wake_lock(&rpcrouter_wake_lock);
 wake_up(&smd_wait);
}
