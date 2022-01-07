
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * previous_class_level ;

void
invalidate_class_lookup_cache (void)
{
  previous_class_level = ((void*)0);
}
