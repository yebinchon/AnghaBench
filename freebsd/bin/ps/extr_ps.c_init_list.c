
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct listinfo {int elemsize; char const* lname; TYPE_1__ l; int addelem; scalar_t__ maxcount; scalar_t__ count; } ;
typedef int addelem_rtn ;



__attribute__((used)) static void
init_list(struct listinfo *inf, addelem_rtn artn, int elemsize,
    const char *lname)
{

 inf->count = inf->maxcount = 0;
 inf->elemsize = elemsize;
 inf->addelem = artn;
 inf->lname = lname;
 inf->l.ptr = ((void*)0);
}
