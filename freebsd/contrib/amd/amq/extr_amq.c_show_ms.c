
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int as_drops; int as_stale; int as_mok; int as_merr; int as_uerr; } ;
typedef TYPE_1__ amq_mount_stats ;


 int printf (char*,int,int,int,int,int) ;

__attribute__((used)) static void
show_ms(amq_mount_stats *ms)
{
  printf("requests  stale     mount     mount     unmount\ndeferred  fhandles  ok        failed    failed\n%-9d %-9d %-9d %-9d %-9d\n",



  ms->as_drops, ms->as_stale, ms->as_mok, ms->as_merr, ms->as_uerr);
}
