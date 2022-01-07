
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static void
maintenance_space_display (char *args, int from_tty)
{
  extern int display_space;

  if (args == ((void*)0) || *args == '\0')
    printf_unfiltered ("\"maintenance space\" takes a numeric argument.\n");
  else
    display_space = strtol (args, ((void*)0), 10);
}
