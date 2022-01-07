
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int printf_filtered (char*) ;

void
annotate_display_end (void)
{
  if (annotation_level == 2)
    printf_filtered ("\n\032\032display-end\n");
}
