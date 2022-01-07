
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {char** vector; } ;


 int xfree (struct environ*) ;

void
free_environ (struct environ *e)
{
  char **vector = e->vector;

  while (*vector)
    xfree (*vector++);

  xfree (e);
}
