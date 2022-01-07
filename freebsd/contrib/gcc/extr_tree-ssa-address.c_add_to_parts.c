
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct mem_address {void* base; void* index; } ;


 int PLUS_EXPR ;
 void* TREE_TYPE (void*) ;
 void* fold_build2 (int ,void*,void*,int ) ;
 int fold_convert (void*,void*) ;

__attribute__((used)) static void
add_to_parts (struct mem_address *parts, tree elt)
{
  tree type;

  if (!parts->index)
    {
      parts->index = elt;
      return;
    }

  if (!parts->base)
    {
      parts->base = elt;
      return;
    }


  type = TREE_TYPE (parts->base);
  parts->base = fold_build2 (PLUS_EXPR, type,
        parts->base,
        fold_convert (type, elt));
}
