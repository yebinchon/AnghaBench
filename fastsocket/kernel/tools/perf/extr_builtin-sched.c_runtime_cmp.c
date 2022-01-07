
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_atoms {scalar_t__ total_runtime; } ;



__attribute__((used)) static int runtime_cmp(struct work_atoms *l, struct work_atoms *r)
{
 if (l->total_runtime < r->total_runtime)
  return -1;
 if (l->total_runtime > r->total_runtime)
  return 1;

 return 0;
}
