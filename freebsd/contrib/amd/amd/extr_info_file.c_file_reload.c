
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * file_open (char*,int *) ;
 int file_search_or_reload (int *,int *,char*,int *,int *,void (*) (int *,char*,char*)) ;

int
file_reload(mnt_map *m, char *map, void (*fn) (mnt_map *, char *, char *))
{
  FILE *mapf = file_open(map, (time_t *) ((void*)0));

  if (mapf) {
    int error = file_search_or_reload(m, mapf, map, ((void*)0), ((void*)0), fn);
    (void) fclose(mapf);
    return error;
  }
  return errno;
}
