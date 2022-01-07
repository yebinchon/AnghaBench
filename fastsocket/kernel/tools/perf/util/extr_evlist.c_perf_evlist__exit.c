
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int * pollfd; int * mmap; } ;


 int free (int *) ;

void perf_evlist__exit(struct perf_evlist *evlist)
{
 free(evlist->mmap);
 free(evlist->pollfd);
 evlist->mmap = ((void*)0);
 evlist->pollfd = ((void*)0);
}
