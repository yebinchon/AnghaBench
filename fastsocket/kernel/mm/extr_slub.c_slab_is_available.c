
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UP ;
 scalar_t__ slab_state ;

int slab_is_available(void)
{
 return slab_state >= UP;
}
