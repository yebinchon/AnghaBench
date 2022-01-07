
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slob_ready ;

int slab_is_available(void)
{
 return slob_ready;
}
