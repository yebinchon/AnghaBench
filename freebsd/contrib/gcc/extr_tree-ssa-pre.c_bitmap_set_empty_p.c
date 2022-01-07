
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {int values; } ;


 int bitmap_empty_p (int ) ;

__attribute__((used)) static bool
bitmap_set_empty_p (bitmap_set_t set)
{
  return bitmap_empty_p (set->values);
}
