
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; } ;
typedef int mnt_map ;
typedef int dbfilename ;
typedef int DBM ;


 int DBM_SUFFIX ;
 int O_RDONLY ;
 int clocktime (int *) ;
 int dbm_close (int *) ;
 int * dbm_open (char*,int ,int ) ;
 int dbm_pagfno (int *) ;
 int errno ;
 int fstat (int ,struct stat*) ;
 int stat (char*,struct stat*) ;
 int xstrlcat (char*,int ,int) ;
 int xstrlcpy (char*,char*,int) ;

int
ndbm_init(mnt_map *m, char *map, time_t *tp)
{
  DBM *db;

  db = dbm_open(map, O_RDONLY, 0);
  if (db) {
    struct stat stb;
    int error;







    error = fstat(dbm_pagfno(db), &stb);

    if (error < 0)
      *tp = clocktime(((void*)0));
    else
      *tp = stb.st_mtime;
    dbm_close(db);
    return 0;
  }
  return errno;
}
