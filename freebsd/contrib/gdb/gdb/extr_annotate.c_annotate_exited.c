
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_exited_hook () ;
 int annotation_level ;
 int printf_filtered (char*,int) ;

void
annotate_exited (int exitstatus)
{
  if (annotate_exited_hook)
    annotate_exited_hook ();
  else
    {
      if (annotation_level > 1)
 printf_filtered ("\n\032\032exited %d\n", exitstatus);
    }
}
