
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ alloc; TYPE_2__* cfm; int map_name; int (* isup ) (TYPE_3__*,int ) ;} ;
typedef TYPE_3__ mnt_map ;
struct TYPE_11__ {int na_mtime; } ;
struct TYPE_14__ {TYPE_1__ am_fattr; } ;
typedef TYPE_4__ am_node ;
struct TYPE_12__ {int cfm_dir; } ;


 scalar_t__ MAPC_ALL ;
 scalar_t__ MAPC_ROOT ;
 int XLOG_ERROR ;
 int clocktime (int *) ;
 TYPE_4__* find_ap (int ) ;
 int mapc_clear (TYPE_3__*) ;
 int mapc_find_wildcard (TYPE_3__*) ;
 int mapc_reload_map (TYPE_3__*) ;
 int plog (int ,char*,int ) ;
 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void
mapc_sync(mnt_map *m)
{
  int need_mtime_update = 0;

  if (m->alloc == MAPC_ROOT)
    return;


  if (m->isup) {
    if (!((*m->isup)(m, m->map_name))) {
      plog(XLOG_ERROR, "mapc_sync: map %s is down: not clearing map", m->map_name);
      return;
    }
  }

  if (m->alloc >= MAPC_ALL) {

    need_mtime_update = mapc_reload_map(m);
  } else {
    mapc_clear(m);



    mapc_find_wildcard(m);
    need_mtime_update = 1;
  }





  if (need_mtime_update && m->cfm) {
    am_node *mp = find_ap(m->cfm->cfm_dir);
    if (mp) {
      clocktime(&mp->am_fattr.na_mtime);
    } else {
      plog(XLOG_ERROR, "cannot find map %s to update its mtime",
    m->cfm->cfm_dir);
    }
  }
}
