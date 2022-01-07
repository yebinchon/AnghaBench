
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_signalled_hook () ;
 int annotation_level ;
 int printf_filtered (char*) ;

void
annotate_signalled (void)
{
  if (annotate_signalled_hook)
    annotate_signalled_hook ();

  if (annotation_level > 1)
    printf_filtered ("\n\032\032signalled\n");
}
