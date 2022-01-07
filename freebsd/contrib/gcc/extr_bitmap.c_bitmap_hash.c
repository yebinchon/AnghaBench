
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hashval_t ;
struct TYPE_4__ {int * bits; int indx; struct TYPE_4__* next; } ;
typedef TYPE_1__ bitmap_element ;
typedef TYPE_2__* bitmap ;
struct TYPE_5__ {TYPE_1__* first; } ;
typedef int BITMAP_WORD ;


 int BITMAP_ELEMENT_WORDS ;

hashval_t
bitmap_hash (bitmap head)
{
  bitmap_element *ptr;
  BITMAP_WORD hash = 0;
  int ix;

  for (ptr = head->first; ptr; ptr = ptr->next)
    {
      hash ^= ptr->indx;
      for (ix = 0; ix != BITMAP_ELEMENT_WORDS; ix++)
 hash ^= ptr->bits[ix];
    }
  return (hashval_t)hash;
}
