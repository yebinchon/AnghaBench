
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

char *
haseq(char *instr)
{
  if (instr) {
    char *eq = strchr(instr, '=');
    if (eq) return ++eq;
  }
  return ((void*)0);
}
