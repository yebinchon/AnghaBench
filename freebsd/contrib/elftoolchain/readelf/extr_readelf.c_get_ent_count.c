
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int entsize; int sz; int name; } ;


 int INT_MAX ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
get_ent_count(struct section *s, int *ent_count)
{
 if (s->entsize == 0) {
  warnx("section %s has entry size 0", s->name);
  return (0);
 } else if (s->sz / s->entsize > INT_MAX) {
  warnx("section %s has invalid section count", s->name);
  return (0);
 }
 *ent_count = (int)(s->sz / s->entsize);
 return (1);
}
