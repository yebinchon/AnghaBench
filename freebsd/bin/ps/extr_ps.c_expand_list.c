
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ptr; } ;
struct listinfo {int maxcount; int elemsize; TYPE_1__ l; int lname; } ;


 int free (void*) ;
 void* realloc (void*,int) ;
 int xo_errx (int,char*,int,int ) ;

__attribute__((used)) static void *
expand_list(struct listinfo *inf)
{
 void *newlist;
 int newmax;

 newmax = (inf->maxcount + 1) << 1;
 newlist = realloc(inf->l.ptr, newmax * inf->elemsize);
 if (newlist == ((void*)0)) {
  free(inf->l.ptr);
  xo_errx(1, "realloc to %d %ss failed", newmax, inf->lname);
 }
 inf->maxcount = newmax;
 inf->l.ptr = newlist;

 return (newlist);
}
