
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static void
maintenance_time_display (char *args, int from_tty)
{
  extern int display_time;

  if (args == ((void*)0) || *args == '\0')
    printf_unfiltered ("\"maintenance time\" takes a numeric argument.\n");
  else
    display_time = strtol (args, ((void*)0), 10);
}
