
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_mask; char* m_volname; char* m_exportfs; char* m_sel; } ;
typedef TYPE_1__ fsi_mount ;





 int abort () ;
 int dict_add (int ,char*,char*) ;
 int dict_of_volnames ;
 int fsi_error (char*,int ) ;
 int * mount_strings ;

void
set_mount(fsi_mount *mp, int k, char *v)
{
  int m = 1 << k;

  if (mp->m_mask & m) {
    fsi_error("mount tree field \"%s\" already set", mount_strings[k]);
    return;
  }
  mp->m_mask |= m;

  switch (k) {

  case 128:
    dict_add(dict_of_volnames, v, (char *) mp);
    mp->m_volname = v;
    break;

  case 130:
    mp->m_exportfs = v;
    break;

  case 129:
    mp->m_sel = v;
    break;

  default:
    abort();
    break;
  }
}
