
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;
typedef int mnt_map ;
typedef int dbfilename ;
typedef int DBM ;


 int DBM_SUFFIX ;
 int O_RDONLY ;
 int dbm_close (int *) ;
 int * dbm_open (char*,int ,int ) ;
 int dbm_pagfno (int *) ;
 int errno ;
 int fstat (int ,struct stat*) ;
 int search_ndbm (int *,int *,char*,char**) ;
 int stat (char*,struct stat*) ;
 int xstrlcat (char*,int ,int) ;
 int xstrlcpy (char*,char*,int) ;

int
ndbm_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  DBM *db;

  db = dbm_open(map, O_RDONLY, 0);
  if (db) {
    struct stat stb;
    int error;







    error = fstat(dbm_pagfno(db), &stb);

    if (!error && *tp < stb.st_mtime) {
      *tp = stb.st_mtime;
      error = -1;
    } else {
      error = search_ndbm(m, db, key, pval);
    }
    (void) dbm_close(db);
    return error;
  }
  return errno;
}
