
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ processing_has_namespace_info ;
 int * using_list ;

void cp_initialize_namespace ()
{
  processing_has_namespace_info = 0;
  using_list = ((void*)0);
}
