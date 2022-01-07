
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioloc ;


 scalar_t__ ISSET (int,int) ;
 int fsi_log (char*,char*,char*,int) ;
 int lerror (int *,char*,char*,char*,char*) ;

__attribute__((used)) static void
show_required(ioloc *l, int mask, char *info, char *hostname, char *strings[])
{
  int i;
  fsi_log("mask left for %s:%s is %#x", hostname, info, mask);

  for (i = 0; strings[i]; i++)
    if (ISSET(mask, i))
      lerror(l, "%s:%s needs field \"%s\"", hostname, info, strings[i]);
}
