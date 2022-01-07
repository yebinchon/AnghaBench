
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int flags; } ;



int
magic_getflags(struct magic_set *ms)
{
 if (ms == ((void*)0))
  return -1;

 return ms->flags;
}
