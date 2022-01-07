
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_display_number ;
 int disable_display (int) ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;

void
disable_current_display (void)
{
  if (current_display_number >= 0)
    {
      disable_display (current_display_number);
      fprintf_unfiltered (gdb_stderr, "Disabling display %d to avoid infinite recursion.\n",
     current_display_number);
    }
  current_display_number = -1;
}
