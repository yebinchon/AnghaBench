
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef int * bitmap ;
struct TYPE_3__ {int value; } ;


 int * BITMAP_ALLOC (int *) ;
 int ipa_obstack ;
 int splay_tree_insert (int ,int,int ) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int uid_to_subtype_map ;

__attribute__((used)) static bitmap
subtype_map_for_uid (int uid, bool create)
{
  splay_tree_node result = splay_tree_lookup (uid_to_subtype_map,
         (splay_tree_key) uid);

  if (result)
    return (bitmap) result->value;
  else if (create)
    {
      bitmap subtype_map = BITMAP_ALLOC (&ipa_obstack);
      splay_tree_insert (uid_to_subtype_map,
    uid,
    (splay_tree_value)subtype_map);
      return subtype_map;
    }
  else return ((void*)0);
}
