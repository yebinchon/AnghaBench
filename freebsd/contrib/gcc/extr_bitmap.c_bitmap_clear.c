
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bitmap ;
struct TYPE_4__ {scalar_t__ first; } ;


 int bitmap_elt_clear_from (TYPE_1__*,scalar_t__) ;

inline void
bitmap_clear (bitmap head)
{
  if (head->first)
    bitmap_elt_clear_from (head, head->first);
}
