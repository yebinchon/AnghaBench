
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str_nbufs; int str_ptr; int * str_bufs; int str_bufsz; } ;
typedef TYPE_1__ strtab_t ;


 int xmalloc (int ) ;
 int * xrealloc (int *,int) ;

__attribute__((used)) static void
strtab_grow(strtab_t *sp)
{
 sp->str_nbufs++;
 sp->str_bufs = xrealloc(sp->str_bufs, sp->str_nbufs * sizeof (char *));
 sp->str_ptr = xmalloc(sp->str_bufsz);
 sp->str_bufs[sp->str_nbufs - 1] = sp->str_ptr;
}
