
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct annotation {int lock; TYPE_1__* src; } ;
struct TYPE_2__ {int nr_histograms; int sizeof_sym_hist; int histograms; } ;


 int memset (int ,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct annotation* symbol__annotation (struct symbol*) ;

void symbol__annotate_zero_histograms(struct symbol *sym)
{
 struct annotation *notes = symbol__annotation(sym);

 pthread_mutex_lock(&notes->lock);
 if (notes->src != ((void*)0))
  memset(notes->src->histograms, 0,
         notes->src->nr_histograms * notes->src->sizeof_sym_hist);
 pthread_mutex_unlock(&notes->lock);
}
