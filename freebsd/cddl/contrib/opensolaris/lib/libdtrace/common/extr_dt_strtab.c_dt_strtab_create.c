
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_7__ {size_t str_bufsz; int str_nstrs; int str_size; int * str_ptr; scalar_t__ str_nbufs; int * str_bufs; int str_hashsz; int * str_hash; } ;
typedef TYPE_1__ dt_strtab_t ;
typedef int dt_strhash_t ;


 int _dtrace_strbuckets ;
 int assert (int) ;
 int bzero (TYPE_1__*,int) ;
 int * calloc (int ,int) ;
 int dt_strtab_destroy (TYPE_1__*) ;
 int dt_strtab_grow (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

dt_strtab_t *
dt_strtab_create(size_t bufsz)
{
 dt_strtab_t *sp = malloc(sizeof (dt_strtab_t));
 uint_t nbuckets = _dtrace_strbuckets;

 assert(bufsz != 0);

 if (sp == ((void*)0))
  return (((void*)0));

 bzero(sp, sizeof (dt_strtab_t));
 sp->str_hash = calloc(nbuckets, sizeof (dt_strhash_t *));

 if (sp->str_hash == ((void*)0))
  goto err;

 sp->str_hashsz = nbuckets;
 sp->str_bufs = ((void*)0);
 sp->str_ptr = ((void*)0);
 sp->str_nbufs = 0;
 sp->str_bufsz = bufsz;
 sp->str_nstrs = 1;
 sp->str_size = 1;

 if (dt_strtab_grow(sp) == -1)
  goto err;

 *sp->str_ptr++ = '\0';
 return (sp);

err:
 dt_strtab_destroy(sp);
 return (((void*)0));
}
