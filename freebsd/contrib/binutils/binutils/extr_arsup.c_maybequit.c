
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interactive ;
 int xexit (int) ;

void
maybequit (void)
{
  if (! interactive)
    xexit (9);
}
