
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hook_char_replace (char*,size_t,char,char) ;
 size_t strlen (char*) ;

void
run_replaces (char * string)
{

  size_t len = strlen (string);
  hook_char_replace (string, len, '\b', '\0');
}
