
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

int
file_init_or_mtime(mnt_map *m, char *map, time_t *tp)
{
  FILE *mapf = file_open(map, tp);

  if (mapf) {
    fclose(mapf);
    return 0;
  }
  return errno;
}
