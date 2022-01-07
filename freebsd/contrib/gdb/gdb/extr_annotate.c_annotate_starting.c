
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_starting_hook () ;
 int annotation_level ;
 int printf_filtered (char*) ;

void
annotate_starting (void)
{

  if (annotate_starting_hook)
    annotate_starting_hook ();
  else
    {
      if (annotation_level > 1)
 {
   printf_filtered ("\n\032\032starting\n");
 }
    }
}
