
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mach_port_status {int mps_msgcount; } ;
typedef int mach_port_t ;
typedef int mach_port_msgcount_t ;
typedef scalar_t__ error_t ;


 scalar_t__ mach_port_get_receive_status (int ,int ,struct mach_port_status*) ;
 int mach_task_self () ;

__attribute__((used)) static mach_port_msgcount_t
port_msgs_queued (mach_port_t port)
{
  struct mach_port_status status;
  error_t err =
  mach_port_get_receive_status (mach_task_self (), port, &status);

  if (err)
    return 0;
  else
    return status.mps_msgcount;
}
