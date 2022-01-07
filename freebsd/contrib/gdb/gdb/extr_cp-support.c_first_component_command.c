
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* alloca (int) ;
 int cp_find_first_component (char*) ;
 int memcpy (char*,char*,int) ;
 int printf_unfiltered (char*,char*) ;

__attribute__((used)) static void
first_component_command (char *arg, int from_tty)
{
  int len = cp_find_first_component (arg);
  char *prefix = alloca (len + 1);

  memcpy (prefix, arg, len);
  prefix[len] = '\0';

  printf_unfiltered ("%s\n", prefix);
}
