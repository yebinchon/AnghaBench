
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int mnt_map ;


 int ENOENT ;
 scalar_t__ NSTREQ (char*,int ,int ) ;
 int UNION_PREFIX ;
 int UNION_PREFLEN ;

int
union_init(mnt_map *m, char *map, time_t *tp)
{
  *tp = 0;
  return NSTREQ(map, UNION_PREFIX, UNION_PREFLEN) ? 0 : ENOENT;
}
