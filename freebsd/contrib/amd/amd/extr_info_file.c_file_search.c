
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int mnt_map ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * file_open (char*,scalar_t__*) ;
 int file_search_or_reload (int *,int *,char*,char*,char**,int *) ;

int
file_search(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  time_t t;
  FILE *mapf = file_open(map, &t);

  if (mapf) {
    int error;
    if (*tp < t) {
      *tp = t;
      error = -1;
    } else {
      error = file_search_or_reload(m, mapf, map, key, pval, ((void*)0));
    }
    (void) fclose(mapf);
    return error;
  }
  return errno;
}
