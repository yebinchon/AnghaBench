
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evlist {TYPE_1__* mmap; int mmap_len; } ;
struct TYPE_2__ {int mask; int * base; scalar_t__ prev; } ;


 int * MAP_FAILED ;
 int MAP_SHARED ;
 int * mmap (int *,int ,int,int ,int,int ) ;
 int perf_evlist__add_pollfd (struct perf_evlist*,int) ;

__attribute__((used)) static int __perf_evlist__mmap(struct perf_evlist *evlist,
          int idx, int prot, int mask, int fd)
{
 evlist->mmap[idx].prev = 0;
 evlist->mmap[idx].mask = mask;
 evlist->mmap[idx].base = mmap(((void*)0), evlist->mmap_len, prot,
          MAP_SHARED, fd, 0);
 if (evlist->mmap[idx].base == MAP_FAILED) {
  evlist->mmap[idx].base = ((void*)0);
  return -1;
 }

 perf_evlist__add_pollfd(evlist, fd);
 return 0;
}
