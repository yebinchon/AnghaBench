
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int mnt_map ;


 int XLOG_USER ;
 int plog (int ,char*,char*) ;

__attribute__((used)) static int
error_init(mnt_map *m, char *map, time_t *tp)
{
  plog(XLOG_USER, "No source data for map %s", map);
  *tp = 0;

  return 0;
}
