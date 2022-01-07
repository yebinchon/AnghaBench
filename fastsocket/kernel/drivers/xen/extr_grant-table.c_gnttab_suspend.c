
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_gnttab_unmap_shared (int ,int ) ;
 int nr_grant_frames ;
 int shared ;

int gnttab_suspend(void)
{
 arch_gnttab_unmap_shared(shared, nr_grant_frames);
 return 0;
}
