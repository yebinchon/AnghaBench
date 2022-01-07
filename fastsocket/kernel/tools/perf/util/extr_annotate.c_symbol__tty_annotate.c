
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct dso {char* long_name; } ;
struct TYPE_4__ {TYPE_1__* src; } ;
struct TYPE_3__ {int source; } ;


 struct rb_root RB_ROOT ;
 int disasm__purge (int *) ;
 int print_summary (struct rb_root*,char const*) ;
 scalar_t__ symbol__annotate (struct symbol*,struct map*,int ) ;
 int symbol__annotate_printf (struct symbol*,struct map*,int,int,int,int,int ) ;
 TYPE_2__* symbol__annotation (struct symbol*) ;
 int symbol__free_source_line (struct symbol*,int ) ;
 int symbol__get_source_line (struct symbol*,struct map*,int,struct rb_root*,int ,char const*) ;
 int symbol__size (struct symbol*) ;

int symbol__tty_annotate(struct symbol *sym, struct map *map, int evidx,
    bool print_lines, bool full_paths, int min_pcnt,
    int max_lines)
{
 struct dso *dso = map->dso;
 const char *filename = dso->long_name;
 struct rb_root source_line = RB_ROOT;
 u64 len;

 if (symbol__annotate(sym, map, 0) < 0)
  return -1;

 len = symbol__size(sym);

 if (print_lines) {
  symbol__get_source_line(sym, map, evidx, &source_line,
     len, filename);
  print_summary(&source_line, filename);
 }

 symbol__annotate_printf(sym, map, evidx, full_paths,
    min_pcnt, max_lines, 0);
 if (print_lines)
  symbol__free_source_line(sym, len);

 disasm__purge(&symbol__annotation(sym)->src->source);

 return 0;
}
