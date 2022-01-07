
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int printf_filtered (char*,int) ;

void
annotate_watchpoint (int num)
{
  if (annotation_level > 1)
    printf_filtered ("\n\032\032watchpoint %d\n", num);
}
