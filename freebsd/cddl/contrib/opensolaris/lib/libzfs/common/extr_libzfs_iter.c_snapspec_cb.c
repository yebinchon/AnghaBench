
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int (* ssa_func ) (int *,int ) ;int ssa_arg; void* ssa_seenfirst; void* ssa_seenlast; int ssa_last; int ssa_first; } ;
typedef TYPE_1__ snapspec_arg_t ;


 void* B_TRUE ;
 char* strchr (int ,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (int *,int ) ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;

__attribute__((used)) static int
snapspec_cb(zfs_handle_t *zhp, void *arg)
{
 snapspec_arg_t *ssa = arg;
 const char *shortsnapname;
 int err = 0;

 if (ssa->ssa_seenlast)
  return (0);

 shortsnapname = strchr(zfs_get_name(zhp), '@') + 1;
 if (!ssa->ssa_seenfirst && strcmp(shortsnapname, ssa->ssa_first) == 0)
  ssa->ssa_seenfirst = B_TRUE;
 if (strcmp(shortsnapname, ssa->ssa_last) == 0)
  ssa->ssa_seenlast = B_TRUE;

 if (ssa->ssa_seenfirst) {
  err = ssa->ssa_func(zhp, ssa->ssa_arg);
 } else {
  zfs_close(zhp);
 }

 return (err);
}
