
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int mnt_map ;


 int ENOENT ;
 int ROOT_MAP ;
 scalar_t__ STREQ (char*,int ) ;
 int clocktime (int *) ;

__attribute__((used)) static int
root_init(mnt_map *m, char *map, time_t *tp)
{
  *tp = clocktime(((void*)0));
  return STREQ(map, ROOT_MAP) ? 0 : ENOENT;
}
