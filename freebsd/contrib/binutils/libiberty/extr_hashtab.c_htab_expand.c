
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* htab_t ;
struct TYPE_7__ {size_t prime; } ;
struct TYPE_6__ {scalar_t__* entries; unsigned int size_prime_index; size_t size; int alloc_arg; int (* free_with_arg_f ) (int ,scalar_t__*) ;int (* free_f ) (scalar_t__*) ;int (* hash_f ) (scalar_t__) ;scalar_t__ n_deleted; int n_elements; scalar_t__ (* alloc_f ) (size_t,int) ;scalar_t__ (* alloc_with_arg_f ) (int ,size_t,int) ;} ;
typedef scalar_t__ PTR ;


 scalar_t__ HTAB_DELETED_ENTRY ;
 scalar_t__ HTAB_EMPTY_ENTRY ;
 scalar_t__* find_empty_slot_for_expand (TYPE_1__*,int ) ;
 unsigned int higher_prime_index (size_t) ;
 size_t htab_elements (TYPE_1__*) ;
 TYPE_2__* prime_tab ;
 scalar_t__ stub1 (int ,size_t,int) ;
 scalar_t__ stub2 (size_t,int) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__*) ;
 int stub5 (int ,scalar_t__*) ;

__attribute__((used)) static int
htab_expand (htab_t htab)
{
  PTR *oentries;
  PTR *olimit;
  PTR *p;
  PTR *nentries;
  size_t nsize, osize, elts;
  unsigned int oindex, nindex;

  oentries = htab->entries;
  oindex = htab->size_prime_index;
  osize = htab->size;
  olimit = oentries + osize;
  elts = htab_elements (htab);



  if (elts * 2 > osize || (elts * 8 < osize && osize > 32))
    {
      nindex = higher_prime_index (elts * 2);
      nsize = prime_tab[nindex].prime;
    }
  else
    {
      nindex = oindex;
      nsize = osize;
    }

  if (htab->alloc_with_arg_f != ((void*)0))
    nentries = (PTR *) (*htab->alloc_with_arg_f) (htab->alloc_arg, nsize,
        sizeof (PTR *));
  else
    nentries = (PTR *) (*htab->alloc_f) (nsize, sizeof (PTR *));
  if (nentries == ((void*)0))
    return 0;
  htab->entries = nentries;
  htab->size = nsize;
  htab->size_prime_index = nindex;
  htab->n_elements -= htab->n_deleted;
  htab->n_deleted = 0;

  p = oentries;
  do
    {
      PTR x = *p;

      if (x != HTAB_EMPTY_ENTRY && x != HTAB_DELETED_ENTRY)
 {
   PTR *q = find_empty_slot_for_expand (htab, (*htab->hash_f) (x));

   *q = x;
 }

      p++;
    }
  while (p < olimit);

  if (htab->free_f != ((void*)0))
    (*htab->free_f) (oentries);
  else if (htab->free_with_arg_f != ((void*)0))
    (*htab->free_with_arg_f) (htab->alloc_arg, oentries);
  return 1;
}
