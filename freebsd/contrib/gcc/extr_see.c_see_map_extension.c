
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_pre_extension_expr {size_t bitmap_index; } ;



__attribute__((used)) static int
see_map_extension (void **slot, void *b)
{
  struct see_pre_extension_expr *expr = *slot;
  struct see_pre_extension_expr **index_map =
    (struct see_pre_extension_expr **) b;

  index_map[expr->bitmap_index] = expr;

  return 1;
}
