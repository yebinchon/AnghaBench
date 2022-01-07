
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int invalidate_bh_lru ;
 int on_each_cpu (int ,int *,int) ;

void invalidate_bh_lrus(void)
{
 on_each_cpu(invalidate_bh_lru, ((void*)0), 1);
}
