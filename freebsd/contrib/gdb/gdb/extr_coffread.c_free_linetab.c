
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * linetab ;
 int xfree (int *) ;

__attribute__((used)) static void
free_linetab (void)
{
  if (linetab)
    xfree (linetab);
  linetab = ((void*)0);
}
