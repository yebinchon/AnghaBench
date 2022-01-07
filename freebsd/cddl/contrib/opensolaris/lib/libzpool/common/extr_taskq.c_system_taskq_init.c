
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASKQ_DYNAMIC ;
 int TASKQ_PREPOPULATE ;
 int minclsyspri ;
 int system_taskq ;
 int taskq_create (char*,int,int ,int,int,int) ;

void
system_taskq_init(void)
{
 system_taskq = taskq_create("system_taskq", 64, minclsyspri, 4, 512,
     TASKQ_DYNAMIC | TASKQ_PREPOPULATE);
}
