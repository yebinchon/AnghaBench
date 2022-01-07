
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef int tree ;
struct TYPE_3__ {int * values; int indexed; } ;


 int * BITMAP_ALLOC (int *) ;
 int VALUE_HANDLE_ID (int ) ;
 int bitmap_set_bit (int *,int ) ;
 int gcc_assert (int ) ;
 int grand_bitmap_obstack ;

__attribute__((used)) static inline void
value_insert_into_set_bitmap (value_set_t set, tree v)
{
  gcc_assert (set->indexed);

  if (set->values == ((void*)0))
    set->values = BITMAP_ALLOC (&grand_bitmap_obstack);

  bitmap_set_bit (set->values, VALUE_HANDLE_ID (v));
}
