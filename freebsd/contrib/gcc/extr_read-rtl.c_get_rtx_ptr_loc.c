
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_loc {int dummy; } ;


 scalar_t__ htab_find (int ,void const**) ;
 int ptr_locs ;

__attribute__((used)) static const struct ptr_loc *
get_rtx_ptr_loc (const void *ptr)
{
  return (const struct ptr_loc *) htab_find (ptr_locs, &ptr);
}
