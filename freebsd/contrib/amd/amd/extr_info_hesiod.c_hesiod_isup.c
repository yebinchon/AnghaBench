
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;


 int ENOENT ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int dlog (char*,char*,int ) ;
 int hesiod_search (int *,char*,char*,char**,int *) ;
 int plog (int ,char*,char*) ;
 int strerror (int) ;

int
hesiod_isup(mnt_map *m, char *map)
{
  int error;
  char *val;
  time_t mtime;
  static int last_status = 1;

  error = hesiod_search(m, map, "/defaults", &val, &mtime);
  dlog("hesiod_isup(%s): %s", map, strerror(error));
  if (error != 0 && error != ENOENT) {
    plog(XLOG_ERROR,
  "hesiod_isup: error getting `/defaults' entry in map %s: %m", map);
    last_status = 0;
    return 0;
  }
  if (last_status == 0) {
    plog(XLOG_INFO, "hesiod_isup: Hesiod came back up for map %s", map);
    last_status = 1;
  }
  return 1;
}
