
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 void* breakpoint_changed ;
 void* delete_breakpoint_hook ;
 void* modify_breakpoint_hook ;

void
_initialize_annotate (void)
{
  if (annotation_level > 1)
    {
      delete_breakpoint_hook = breakpoint_changed;
      modify_breakpoint_hook = breakpoint_changed;
    }
}
