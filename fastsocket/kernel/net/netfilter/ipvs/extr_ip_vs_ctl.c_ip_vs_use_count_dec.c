
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int module_put (int ) ;

void
ip_vs_use_count_dec(void)
{
 module_put(THIS_MODULE);
}
