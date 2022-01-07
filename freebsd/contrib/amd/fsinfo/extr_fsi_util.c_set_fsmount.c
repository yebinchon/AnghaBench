
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_mask; char* f_localname; char* f_volname; char* f_fstype; char* f_opts; char* f_from; } ;
typedef TYPE_1__ fsmount ;
 int abort () ;
 int fsi_error (char*,int ) ;
 int * fsmount_strings ;

void
set_fsmount(fsmount *fp, int k, char *v)
{
  int m = 1 << k;

  if (fp->f_mask & m) {
    fsi_error("mount field \"%s\" already set", fsmount_strings[k]);
    return;
  }
  fp->f_mask |= m;

  switch (k) {

  case 130:
    fp->f_localname = v;
    break;

  case 128:
    fp->f_volname = v;
    break;

  case 131:
    fp->f_fstype = v;
    break;

  case 129:
    fp->f_opts = v;
    break;

  case 132:
    fp->f_from = v;
    break;

  case 133:
    break;

  default:
    abort();
    break;
  }
}
