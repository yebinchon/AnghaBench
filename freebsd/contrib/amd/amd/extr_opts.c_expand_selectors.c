
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 char* expand_op (char*,int ) ;

char *
expand_selectors(char *key)
{
  return expand_op(key, TRUE);
}
