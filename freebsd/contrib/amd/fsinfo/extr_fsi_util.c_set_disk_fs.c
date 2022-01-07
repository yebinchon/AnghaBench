
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_q; } ;
typedef TYPE_1__ fsi_mount ;
struct TYPE_5__ {int d_mask; char* d_fstype; char* d_opts; char* d_dumpset; char* d_log; int * d_mount; void* d_freq; void* d_passno; } ;
typedef TYPE_2__ disk_fs ;
 int XFREE (char*) ;
 int abort () ;
 void* atoi (char*) ;
 int * disk_fs_strings ;
 int fsi_error (char*,int ) ;

void
set_disk_fs(disk_fs *dp, int k, char *v)
{
  int m = 1 << k;

  if (dp->d_mask & m) {
    fsi_error("fs field \"%s\" already set", disk_fs_strings[k]);
    return;
  }
  dp->d_mask |= m;

  switch (k) {

  case 132:
    dp->d_fstype = v;
    break;

  case 129:
    dp->d_opts = v;
    break;

  case 134:
    dp->d_dumpset = v;
    break;

  case 131:
    dp->d_log = v;
    break;

  case 128:
    dp->d_passno = atoi(v);
    XFREE(v);
    break;

  case 133:
    dp->d_freq = atoi(v);
    XFREE(v);
    break;

  case 130:
    dp->d_mount = &((fsi_mount *) v)->m_q;
    break;

  default:
    abort();
    break;
  }
}
