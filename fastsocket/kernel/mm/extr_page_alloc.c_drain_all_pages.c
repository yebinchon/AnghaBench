
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drain_local_pages ;
 int on_each_cpu (int ,int *,int) ;

void drain_all_pages(void)
{
 on_each_cpu(drain_local_pages, ((void*)0), 1);
}
