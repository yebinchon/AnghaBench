
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;






 scalar_t__ DECL_P (scalar_t__) ;
 int DECL_UID (scalar_t__) ;
 int FULL_ESCAPE ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int bitmap_bit_p (int ,int ) ;
 int check_cast_type (scalar_t__,scalar_t__) ;
 scalar_t__ get_canon_type (scalar_t__,int,int) ;
 scalar_t__ ipa_type_escape_star_count_of_interesting_type (scalar_t__) ;
 int mark_type (scalar_t__,int ) ;
 int results_of_malloc ;

__attribute__((used)) static void
check_cast (tree to_type, tree from)
{
  tree from_type = get_canon_type (TREE_TYPE (from), 0, 0);
  bool to_interesting_type, from_interesting_type;

  to_type = get_canon_type (to_type, 0, 0);
  if (!from_type || !to_type || from_type == to_type)
    return;

  to_interesting_type =
    ipa_type_escape_star_count_of_interesting_type (to_type) >= 0;
  from_interesting_type =
    ipa_type_escape_star_count_of_interesting_type (from_type) >= 0;

  if (to_interesting_type)
    if (from_interesting_type)
      {






 switch (check_cast_type (to_type, from_type))
   {
   case 129:
   case 128:
   case 131:
     break;

   case 130:
     mark_type (to_type, FULL_ESCAPE);
     mark_type (from_type, FULL_ESCAPE);
     break;
   }
      }
    else
      {


 if (DECL_P (from) && !bitmap_bit_p (results_of_malloc, DECL_UID (from)))
   mark_type (to_type, FULL_ESCAPE);
      }
  else if (from_interesting_type)
    mark_type (from_type, FULL_ESCAPE);
}
