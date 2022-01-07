
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_stopped_hook () ;
 int annotation_level ;
 int breakpoints_changed () ;
 scalar_t__ ignore_count_changed ;
 int printf_filtered (char*) ;

void
annotate_stopped (void)
{
  if (annotate_stopped_hook)
    annotate_stopped_hook ();
  else
    {
      if (annotation_level > 1)
 printf_filtered ("\n\032\032stopped\n");
    }
  if (annotation_level > 1 && ignore_count_changed)
    {
      ignore_count_changed = 0;
      breakpoints_changed ();
    }
}
