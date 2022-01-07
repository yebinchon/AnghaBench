
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * stringtab ;
 int xfree (int *) ;

__attribute__((used)) static void
free_stringtab (void)
{
  if (stringtab)
    xfree (stringtab);
  stringtab = ((void*)0);
}
