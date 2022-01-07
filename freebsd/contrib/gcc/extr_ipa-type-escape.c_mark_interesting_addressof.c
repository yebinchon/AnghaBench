
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int splay_tree_value ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef scalar_t__ bitmap ;
struct TYPE_3__ {scalar_t__ value; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 int TYPE_UID (int ) ;
 int bitmap_set_bit (scalar_t__,int) ;
 int gcc_assert (int) ;
 int get_canon_type (int ,int,int) ;
 int ipa_obstack ;
 scalar_t__ ipa_type_escape_star_count_of_interesting_type (int ) ;
 int splay_tree_insert (int ,int,int ) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int uid_to_addressof_down_map ;
 int uid_to_addressof_up_map ;

__attribute__((used)) static void
mark_interesting_addressof (tree to_type, tree from_type)
{
  int from_uid;
  int to_uid;
  bitmap type_map;
  splay_tree_node result;

  from_type = get_canon_type (from_type, 0, 0);
  to_type = get_canon_type (to_type, 0, 0);

  if (!from_type || !to_type)
    return;

  from_uid = TYPE_UID (from_type);
  to_uid = TYPE_UID (to_type);

  gcc_assert (ipa_type_escape_star_count_of_interesting_type (from_type) == 0);


  result = splay_tree_lookup (uid_to_addressof_down_map,
         (splay_tree_key) from_uid);

  if (result)
    type_map = (bitmap) result->value;
  else
    {
      type_map = BITMAP_ALLOC (&ipa_obstack);
      splay_tree_insert (uid_to_addressof_down_map,
    from_uid,
    (splay_tree_value)type_map);
    }
  bitmap_set_bit (type_map, TYPE_UID (to_type));


  result =
    splay_tree_lookup (uid_to_addressof_up_map, (splay_tree_key) to_uid);

  if (result)
    type_map = (bitmap) result->value;
  else
    {
      type_map = BITMAP_ALLOC (&ipa_obstack);
      splay_tree_insert (uid_to_addressof_up_map,
    to_uid,
    (splay_tree_value)type_map);
    }
  bitmap_set_bit (type_map, TYPE_UID (to_type));
}
