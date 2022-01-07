
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {scalar_t__ need_stats_update; int config_change; } ;
typedef int s64 ;


 int current ;
 int fill_balloon (struct virtio_balloon*,int ) ;
 scalar_t__ freezing (int ) ;
 scalar_t__ kthread_should_stop () ;
 int leak_balloon (struct virtio_balloon*,int ) ;
 int set_freezable () ;
 int stats_handle_request (struct virtio_balloon*) ;
 int towards_target (struct virtio_balloon*) ;
 int try_to_freeze () ;
 int update_balloon_size (struct virtio_balloon*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int balloon(void *_vballoon)
{
 struct virtio_balloon *vb = _vballoon;

 set_freezable();
 while (!kthread_should_stop()) {
  s64 diff;

  try_to_freeze();
  wait_event_interruptible(vb->config_change,
      (diff = towards_target(vb)) != 0
      || vb->need_stats_update
      || kthread_should_stop()
      || freezing(current));
  if (vb->need_stats_update)
   stats_handle_request(vb);
  if (diff > 0)
   fill_balloon(vb, diff);
  else if (diff < 0)
   leak_balloon(vb, -diff);
  update_balloon_size(vb);
 }
 return 0;
}
