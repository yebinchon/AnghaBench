
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct go7007 {int interrupt_value; int interrupt_data; scalar_t__ interrupt_available; int video_dev; int interrupt_waitq; TYPE_1__* hpi_ops; } ;
struct TYPE_2__ {int (* read_interrupt ) (struct go7007*) ;} ;


 int HZ ;
 int stub1 (struct go7007*) ;
 int v4l2_err (int ,char*) ;
 scalar_t__ wait_event_timeout (int ,scalar_t__,int) ;

int go7007_read_interrupt(struct go7007 *go, u16 *value, u16 *data)
{
 go->interrupt_available = 0;
 go->hpi_ops->read_interrupt(go);
 if (wait_event_timeout(go->interrupt_waitq,
    go->interrupt_available, 5*HZ) < 0) {
  v4l2_err(go->video_dev, "timeout waiting for read interrupt\n");
  return -1;
 }
 if (!go->interrupt_available)
  return -1;
 go->interrupt_available = 0;
 *value = go->interrupt_value & 0xfffe;
 *data = go->interrupt_data;
 return 0;
}
