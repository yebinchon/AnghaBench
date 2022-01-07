
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *
dt_basename(char *str)
{
 char *last = strrchr(str, '/');

 if (last == ((void*)0))
  return (str);

 return (last + 1);
}
