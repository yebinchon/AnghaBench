
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_signal_hook () ;
 int annotation_level ;
 int printf_filtered (char*) ;

void
annotate_signal (void)
{
  if (annotate_signal_hook)
    annotate_signal_hook ();

  if (annotation_level > 1)
    printf_filtered ("\n\032\032signal\n");
}
