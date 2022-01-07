
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int EXPOSED_PARAMETER ;
 scalar_t__ FIELD_DECL ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_FIELDS (scalar_t__) ;
 int TYPE_UID (scalar_t__) ;
 int been_there_done_that ;
 scalar_t__ bitmap_bit_p (int ,int) ;
 int bitmap_set_bit (int ,int) ;
 int gcc_assert (int) ;
 scalar_t__ get_canon_type (scalar_t__,int,int) ;
 scalar_t__ ipa_type_escape_star_count_of_interesting_type (scalar_t__) ;
 int mark_interesting_type (scalar_t__,int ) ;

__attribute__((used)) static void
close_type_exposed_parameter (tree type)
{
  tree field;
  int uid;

  type = get_canon_type (type, 0, 0);
  if (!type)
    return;
  uid = TYPE_UID (type);
  gcc_assert (!POINTER_TYPE_P (type));

  if (bitmap_bit_p (been_there_done_that, uid))
    return;
  bitmap_set_bit (been_there_done_that, uid);



  for (field = TYPE_FIELDS (type);
       field;
       field = TREE_CHAIN (field))
    {
      tree field_type;

      if (TREE_CODE (field) != FIELD_DECL)
 continue;

      field_type = get_canon_type (TREE_TYPE (field), 0, 0);
      mark_interesting_type (field_type, EXPOSED_PARAMETER);


      if (ipa_type_escape_star_count_of_interesting_type (field_type) == 0)
 close_type_exposed_parameter (field_type);
    }
}
