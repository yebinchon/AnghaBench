
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotation_level ;
 int printf_unfiltered (char*) ;
 int target_terminal_ours () ;

void
annotate_frames_invalid (void)
{
  if (annotation_level > 1)
    {
      target_terminal_ours ();
      printf_unfiltered ("\n\032\032frames-invalid\n");
    }
}
