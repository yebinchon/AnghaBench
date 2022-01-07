
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rds_info_iterator {int dummy; } ;
struct rds_info_counter {char* name; int value; } ;
typedef int ctr ;


 int BUG_ON (int) ;
 int rds_info_copy (struct rds_info_iterator*,struct rds_info_counter*,int) ;
 int strlen (char const* const) ;
 int strncpy (char*,char const* const,int) ;

void rds_stats_info_copy(struct rds_info_iterator *iter,
    uint64_t *values, const char *const *names, size_t nr)
{
 struct rds_info_counter ctr;
 size_t i;

 for (i = 0; i < nr; i++) {
  BUG_ON(strlen(names[i]) >= sizeof(ctr.name));
  strncpy(ctr.name, names[i], sizeof(ctr.name) - 1);
  ctr.name[sizeof(ctr.name) - 1] = '\0';
  ctr.value = values[i];

  rds_info_copy(iter, &ctr, sizeof(ctr));
 }
}
