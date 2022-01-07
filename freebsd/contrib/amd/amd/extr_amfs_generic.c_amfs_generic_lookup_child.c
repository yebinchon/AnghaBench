
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int am_error; int ** am_alarray; TYPE_2__* am_al; } ;
typedef TYPE_3__ am_node ;
typedef int am_loc ;
struct TYPE_11__ {TYPE_1__* al_mnt; } ;
struct TYPE_10__ {int mf_error; int mf_server; } ;


 int ENOENT ;
 scalar_t__ FSRV_ISUP (int ) ;


 int ** amfs_lookup_loc (TYPE_3__*,int*) ;
 TYPE_3__* amfs_lookup_node (TYPE_3__*,char*,int*) ;
 int dlog (char*) ;
 int ereturn (int ) ;
 int free_map (TYPE_3__*) ;

am_node *
amfs_generic_lookup_child(am_node *mp, char *fname, int *error_return, int op)
{
  am_node *new_mp;
  am_loc **al_array;
  int mp_error;

  dlog("in amfs_generic_lookup_child");

  *error_return = 0;
  new_mp = amfs_lookup_node(mp, fname, error_return);


  if (!new_mp || *error_return > 0)
    return new_mp;


  if (*error_return == 0 && FSRV_ISUP(new_mp->am_al->al_mnt->mf_server))
    return new_mp;

  switch (op) {
  case 129:



    ereturn(ENOENT);
  case 128:
    return new_mp;
  }


  mp_error = *error_return;

  al_array = amfs_lookup_loc(new_mp, error_return);
  if (!al_array) {
    new_mp->am_error = new_mp->am_al->al_mnt->mf_error = *error_return;
    free_map(new_mp);
    return ((void*)0);
  }


  new_mp->am_alarray = al_array;







  return new_mp;
}
