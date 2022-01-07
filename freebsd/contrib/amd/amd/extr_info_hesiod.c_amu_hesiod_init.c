
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int mnt_map ;


 int ENOENT ;
 int HES_PREFIX ;
 int HES_PREFLEN ;
 scalar_t__ NSTREQ (char*,int ,int ) ;
 int dlog (char*,char*) ;
 int hesiod_context ;
 scalar_t__ hesiod_init (int *) ;

int
amu_hesiod_init(mnt_map *m, char *map, time_t *tp)
{
  dlog("amu_hesiod_init(%s)", map);
  *tp = 0;






  return NSTREQ(map, HES_PREFIX, HES_PREFLEN) ? 0 : ENOENT;
}
