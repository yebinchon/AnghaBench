
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;


 int exec_check_perm (char*) ;

int
exec_init(mnt_map *m, char *map, time_t *tp)
{




  return exec_check_perm(map);
}
