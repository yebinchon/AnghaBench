
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int o2quo_fence_self () ;

void o2quo_disk_timeout(void)
{
 o2quo_fence_self();
}
