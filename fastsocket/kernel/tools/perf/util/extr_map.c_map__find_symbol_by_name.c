
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int type; int dso; } ;


 struct symbol* dso__find_symbol_by_name (int ,int ,char const*) ;
 int dso__sort_by_name (int ,int ) ;
 int dso__sorted_by_name (int ,int ) ;
 scalar_t__ map__load (struct map*,int ) ;

struct symbol *map__find_symbol_by_name(struct map *self, const char *name,
     symbol_filter_t filter)
{
 if (map__load(self, filter) < 0)
  return ((void*)0);

 if (!dso__sorted_by_name(self->dso, self->type))
  dso__sort_by_name(self->dso, self->type);

 return dso__find_symbol_by_name(self->dso, self->type, name);
}
