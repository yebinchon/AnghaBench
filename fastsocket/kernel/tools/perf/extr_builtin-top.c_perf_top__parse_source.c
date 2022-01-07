
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int name; } ;
struct perf_top {struct hist_entry* sym_filter_entry; } ;
struct map {TYPE_2__* dso; } ;
struct TYPE_3__ {struct map* map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct annotation {int lock; int * src; } ;
struct TYPE_4__ {scalar_t__ symtab_type; } ;


 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ;
 int pr_err (char*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 scalar_t__ symbol__alloc_hist (struct symbol*) ;
 int symbol__annotate (struct symbol*,struct map*,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
{
 struct symbol *sym;
 struct annotation *notes;
 struct map *map;
 int err = -1;

 if (!he || !he->ms.sym)
  return -1;

 sym = he->ms.sym;
 map = he->ms.map;




 if (map->dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS) {
  pr_err("Can't annotate %s: No vmlinux file was found in the "
         "path\n", sym->name);
  sleep(1);
  return -1;
 }

 notes = symbol__annotation(sym);
 if (notes->src != ((void*)0)) {
  pthread_mutex_lock(&notes->lock);
  goto out_assign;
 }

 pthread_mutex_lock(&notes->lock);

 if (symbol__alloc_hist(sym) < 0) {
  pthread_mutex_unlock(&notes->lock);
  pr_err("Not enough memory for annotating '%s' symbol!\n",
         sym->name);
  sleep(1);
  return err;
 }

 err = symbol__annotate(sym, map, 0);
 if (err == 0) {
out_assign:
  top->sym_filter_entry = he;
 }

 pthread_mutex_unlock(&notes->lock);
 return err;
}
