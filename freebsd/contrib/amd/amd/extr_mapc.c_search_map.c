
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* search ) (TYPE_1__*,int ,char*,char**,int *) ;int map_name; int modify; } ;
typedef TYPE_1__ mnt_map ;


 int XLOG_MAP ;
 int mapc_sync (TYPE_1__*) ;
 int plog (int ,char*,int ) ;
 int stub1 (TYPE_1__*,int ,char*,char**,int *) ;

__attribute__((used)) static int
search_map(mnt_map *m, char *key, char **valp)
{
  int rc;

  do {
    rc = (*m->search) (m, m->map_name, key, valp, &m->modify);
    if (rc < 0) {
      plog(XLOG_MAP, "Re-synchronizing cache for map %s", m->map_name);
      mapc_sync(m);
    }
  } while (rc < 0);

  return rc;
}
