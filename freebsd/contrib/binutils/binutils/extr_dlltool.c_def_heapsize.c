
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_directive (int ) ;
 int sprintf (char*,char*,int,...) ;
 int xstrdup (char*) ;

void
def_heapsize (int reserve, int commit)
{
  char b[200];
  if (commit > 0)
    sprintf (b, "-heap 0x%x,0x%x ", reserve, commit);
  else
    sprintf (b, "-heap 0x%x ", reserve);
  new_directive (xstrdup (b));
}
