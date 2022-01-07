
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execution_control_state {scalar_t__ wait_some_more; } ;



__attribute__((used)) static void
stop_stepping (struct execution_control_state *ecs)
{

  ecs->wait_some_more = 0;
}
