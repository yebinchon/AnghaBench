
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctl_fd; scalar_t__ as_fd; scalar_t__ status_fd; } ;
typedef TYPE_1__ procinfo ;


 int close (scalar_t__) ;

__attribute__((used)) static void
close_procinfo_files (procinfo *pi)
{
  if (pi->ctl_fd > 0)
    close (pi->ctl_fd);






  pi->ctl_fd = pi->as_fd = pi->status_fd = 0;
}
