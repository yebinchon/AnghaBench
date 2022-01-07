
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dowait (int ,int *) ;
 scalar_t__ njobs ;

__attribute__((used)) static void
checkzombies(void)
{
 while (njobs > 0 && dowait(0, ((void*)0)) > 0)
  ;
}
