
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* AllocSleepOK (size_t,int ,int *) ;
 int allocRTag ;

void *
malloc (size_t size)
{
  return AllocSleepOK (size, allocRTag, ((void*)0));
}
