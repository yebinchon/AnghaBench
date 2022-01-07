
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {void* values; void* expressions; } ;


 void* BITMAP_ALLOC (int *) ;
 int bitmap_set_pool ;
 int grand_bitmap_obstack ;
 int pool_alloc (int ) ;

__attribute__((used)) static bitmap_set_t
bitmap_set_new (void)
{
  bitmap_set_t ret = (bitmap_set_t) pool_alloc (bitmap_set_pool);
  ret->expressions = BITMAP_ALLOC (&grand_bitmap_obstack);
  ret->values = BITMAP_ALLOC (&grand_bitmap_obstack);
  return ret;
}
