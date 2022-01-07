
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int str_hashsz; int str_nstrs; int str_size; int * str_ptr; int str_bufsz; scalar_t__ str_nbufs; int * str_bufs; int str_hash; } ;
typedef TYPE_1__ strtab_t ;
typedef int strhash_t ;


 int STRTAB_BUFSZ ;
 int STRTAB_HASHSZ ;
 int strtab_grow (TYPE_1__*) ;
 int xcalloc (int) ;

void
strtab_create(strtab_t *sp)
{
 sp->str_hash = xcalloc(STRTAB_HASHSZ * sizeof (strhash_t *));
 sp->str_hashsz = STRTAB_HASHSZ;
 sp->str_bufs = ((void*)0);
 sp->str_ptr = ((void*)0);
 sp->str_nbufs = 0;
 sp->str_bufsz = STRTAB_BUFSZ;
 sp->str_nstrs = 1;
 sp->str_size = 1;

 strtab_grow(sp);
 *sp->str_ptr++ = '\0';
}
