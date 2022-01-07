
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;


 int clocktime (int *) ;
 int dlog (char*,char*,char*) ;
 int errno ;
 int exec_check_perm (char*) ;
 int exec_map_open (char*,char*) ;
 int exec_parse_qanswer (int *,int,char*,char*,char**,int *) ;
 int fflush (scalar_t__) ;
 scalar_t__ logfp ;

int
exec_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  int mapfd, ret;

  if ((ret = exec_check_perm(map)) != 0) {
    return ret;
  }

  if (!key)
    return 0;

  if (logfp)
    fflush(logfp);
  dlog("exec_search \"%s\", key: \"%s\"", map, key);
  mapfd = exec_map_open(map, key);

  if (mapfd >= 0) {
    if (tp)
      *tp = clocktime(((void*)0));

    return exec_parse_qanswer(m, mapfd, map, key, pval, tp);
  }

  return errno;
}
