
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evlist {int nr_mmaps; TYPE_1__* mmap; int mmap_len; } ;
struct TYPE_2__ {int * base; } ;


 int free (TYPE_1__*) ;
 int munmap (int *,int ) ;

void perf_evlist__munmap(struct perf_evlist *evlist)
{
 int i;

 for (i = 0; i < evlist->nr_mmaps; i++) {
  if (evlist->mmap[i].base != ((void*)0)) {
   munmap(evlist->mmap[i].base, evlist->mmap_len);
   evlist->mmap[i].base = ((void*)0);
  }
 }

 free(evlist->mmap);
 evlist->mmap = ((void*)0);
}
