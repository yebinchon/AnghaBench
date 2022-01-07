
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_kallsyms_args {struct dso* dso; struct map* map; } ;
struct map {int dummy; } ;
struct dso {int dummy; } ;


 int kallsyms__parse (char const*,struct process_kallsyms_args*,int ) ;
 int map__process_kallsym_symbol ;

__attribute__((used)) static int dso__load_all_kallsyms(struct dso *dso, const char *filename,
      struct map *map)
{
 struct process_kallsyms_args args = { .map = map, .dso = dso, };
 return kallsyms__parse(filename, &args, map__process_kallsym_symbol);
}
