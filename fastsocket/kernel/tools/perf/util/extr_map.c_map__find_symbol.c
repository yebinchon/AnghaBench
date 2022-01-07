
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map {int type; int dso; } ;


 struct symbol* dso__find_symbol (int ,int ,int ) ;
 scalar_t__ map__load (struct map*,int ) ;

struct symbol *map__find_symbol(struct map *self, u64 addr,
    symbol_filter_t filter)
{
 if (map__load(self, filter) < 0)
  return ((void*)0);

 return dso__find_symbol(self->dso, self->type, addr);
}
