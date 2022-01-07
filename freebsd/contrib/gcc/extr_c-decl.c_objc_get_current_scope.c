
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* current_scope ;

void *
objc_get_current_scope (void)
{
  return current_scope;
}
