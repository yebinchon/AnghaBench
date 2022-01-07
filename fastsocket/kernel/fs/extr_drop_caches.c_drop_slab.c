
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int shrink_slab (int,int ,int) ;

__attribute__((used)) static void drop_slab(void)
{
 int nr_objects;

 do {
  nr_objects = shrink_slab(1000, GFP_KERNEL, 1000);
 } while (nr_objects > 10);
}
