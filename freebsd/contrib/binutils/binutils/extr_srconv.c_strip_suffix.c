
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static
char *
strip_suffix (char *name)
{
  int i;
  char *res;

  for (i = 0; name[i] != 0 && name[i] != '.'; i++)
    ;
  res = (char *) xmalloc (i + 1);
  memcpy (res, name, i);
  res[i] = 0;
  return res;
}
