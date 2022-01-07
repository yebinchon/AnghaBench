
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * iqueue ;
 int * queue ;
 int vfree (int *) ;

void sequencer_unload(void)
{
 vfree(queue);
 vfree(iqueue);
 queue = iqueue = ((void*)0);
}
