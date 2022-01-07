
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int ignore_count_changed ;

void
annotate_ignore_count_change (void)
{
  if (annotation_level > 1)
    ignore_count_changed = 1;
}
