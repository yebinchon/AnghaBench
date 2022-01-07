
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct listinfo {TYPE_1__ l; int * lname; int * addelem; scalar_t__ maxcount; scalar_t__ elemsize; scalar_t__ count; } ;


 int free (int *) ;

__attribute__((used)) static void
free_list(struct listinfo *inf)
{

 inf->count = inf->elemsize = inf->maxcount = 0;
 if (inf->l.ptr != ((void*)0))
  free(inf->l.ptr);
 inf->addelem = ((void*)0);
 inf->lname = ((void*)0);
 inf->l.ptr = ((void*)0);
}
