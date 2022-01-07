
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct environ {char** vector; } ;



char **
environ_vector (struct environ *e)
{
  return e->vector;
}
