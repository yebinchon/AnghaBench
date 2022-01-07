
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ pid; } ;


 int inf_debug (struct inf*,char*,int) ;
 int inf_detach (struct inf*) ;
 int inf_startup (struct inf*,int) ;

void
inf_attach (struct inf *inf, int pid)
{
  inf_debug (inf, "attaching: %d", pid);

  if (inf->pid)
    inf_detach (inf);

  inf_startup (inf, pid);
}
