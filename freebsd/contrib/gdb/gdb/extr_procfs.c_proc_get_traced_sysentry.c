
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sysset_t ;
struct TYPE_9__ {scalar_t__ pr_sysentry_offset; int pr_sysentry; } ;
struct TYPE_10__ {scalar_t__ tid; scalar_t__ status_fd; int ctl_fd; TYPE_1__ prstatus; int status_valid; int pid; } ;
typedef TYPE_2__ procinfo ;
typedef scalar_t__ off_t ;


 int FD_STATUS ;
 int PIOCGENTRY ;
 int SEEK_SET ;
 TYPE_2__* find_procinfo_or_die (int ,int ) ;
 int gdb_premptysysset (int *) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ lseek (scalar_t__,scalar_t__,int ) ;
 int memcpy (int *,int *,size_t) ;
 scalar_t__ open_procinfo_files (TYPE_2__*,int ) ;
 int proc_get_status (TYPE_2__*) ;
 int read (scalar_t__,int *,size_t) ;
 int * sysset_t_alloc (TYPE_2__*) ;
 size_t sysset_t_size (TYPE_2__*) ;

sysset_t *
proc_get_traced_sysentry (procinfo *pi, sysset_t *save)
{
  sysset_t *ret = ((void*)0);
  if (pi->tid != 0)
    pi = find_procinfo_or_die (pi->pid, 0);
  {
    static sysset_t sysentry;

    if (ioctl (pi->ctl_fd, PIOCGENTRY, &sysentry) >= 0)
      ret = &sysentry;
  }

  if (save && ret)
    memcpy (save, ret, sysset_t_size (pi));

  return ret;
}
