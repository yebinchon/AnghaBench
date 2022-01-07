
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct work_atoms {int nb_atoms; int total_lat; } ;



__attribute__((used)) static int avg_cmp(struct work_atoms *l, struct work_atoms *r)
{
 u64 avgl, avgr;

 if (!l->nb_atoms)
  return -1;

 if (!r->nb_atoms)
  return 1;

 avgl = l->total_lat / l->nb_atoms;
 avgr = r->total_lat / r->nb_atoms;

 if (avgl < avgr)
  return -1;
 if (avgl > avgr)
  return 1;

 return 0;
}
