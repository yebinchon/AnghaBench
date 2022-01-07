
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
typedef scalar_t__ time_t ;
struct TYPE_7__ {int (* mtime ) (TYPE_1__*,int ,scalar_t__*) ;scalar_t__ modify; scalar_t__ reloads; int (* reload ) (TYPE_1__*,int ,int ) ;int * wildcard; int map_name; scalar_t__ kvhash; scalar_t__ nentries; } ;
typedef TYPE_1__ mnt_map ;
typedef int kv ;


 int NKVHASH ;
 int XFREE (int *) ;
 int XLOG_ERROR ;
 int XLOG_FATAL ;
 int XLOG_INFO ;
 int dlog (char*,...) ;
 scalar_t__ do_mapc_reload ;
 int mapc_add_kv ;
 int mapc_clear (TYPE_1__*) ;
 int mapc_clear_kvhash (int **) ;
 int mapc_search (TYPE_1__*,int ,int **) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int plog (int ,char*,scalar_t__,...) ;
 int stub1 (TYPE_1__*,int ,scalar_t__*) ;
 int stub2 (TYPE_1__*,int ,int ) ;
 int wildcard ;

__attribute__((used)) static int
mapc_reload_map(mnt_map *m)
{
  int error, ret = 0;
  kv *maphash[NKVHASH];
  time_t t;

  error = (*m->mtime) (m, m->map_name, &t);
  if (error) {
    t = m->modify;
  }





  if (m->reloads != 0 && do_mapc_reload != 0) {
    if (t <= m->modify) {
      plog(XLOG_INFO, "reload of map %s is not needed (in sync)", m->map_name);
      dlog("map %s last load time is %d, last modify time is %d",
    m->map_name, (int) m->modify, (int) t);
      return ret;
    }
  }


  memcpy((voidp) maphash, (voidp) m->kvhash, sizeof(m->kvhash));
  memset((voidp) m->kvhash, 0, sizeof(m->kvhash));

  dlog("calling map reload on %s", m->map_name);
  m->nentries = 0;
  error = (*m->reload) (m, m->map_name, mapc_add_kv);
  if (error) {
    if (m->reloads == 0)
      plog(XLOG_FATAL, "first time load of map %s failed!", m->map_name);
    else
      plog(XLOG_ERROR, "reload of map %s failed - using old values",
    m->map_name);
    mapc_clear(m);
    memcpy((voidp) m->kvhash, (voidp) maphash, sizeof(m->kvhash));
  } else {
    if (m->reloads++ == 0)
      plog(XLOG_INFO, "first time load of map %s succeeded", m->map_name);
    else
      plog(XLOG_INFO, "reload #%d of map %s succeeded",
    m->reloads, m->map_name);
    mapc_clear_kvhash(maphash);
    if (m->wildcard) {
       XFREE(m->wildcard);
       m->wildcard = ((void*)0);
    }
    m->modify = t;
    ret = 1;
  }

  dlog("calling mapc_search for wildcard");
  error = mapc_search(m, wildcard, &m->wildcard);
  if (error)
    m->wildcard = ((void*)0);
  return ret;
}
