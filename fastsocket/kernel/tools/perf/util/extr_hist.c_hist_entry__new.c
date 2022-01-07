
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_3__* map; } ;
struct hist_entry {TYPE_1__ pairs; int callchain; TYPE_2__ ms; } ;
struct callchain_root {int dummy; } ;
struct TYPE_8__ {scalar_t__ use_callchain; } ;
struct TYPE_7__ {int referenced; } ;


 int INIT_LIST_HEAD (int *) ;
 int callchain_init (int ) ;
 struct hist_entry* malloc (int) ;
 TYPE_4__ symbol_conf ;

__attribute__((used)) static struct hist_entry *hist_entry__new(struct hist_entry *template)
{
 size_t callchain_size = symbol_conf.use_callchain ? sizeof(struct callchain_root) : 0;
 struct hist_entry *he = malloc(sizeof(*he) + callchain_size);

 if (he != ((void*)0)) {
  *he = *template;

  if (he->ms.map)
   he->ms.map->referenced = 1;
  if (symbol_conf.use_callchain)
   callchain_init(he->callchain);

  INIT_LIST_HEAD(&he->pairs.node);
 }

 return he;
}
