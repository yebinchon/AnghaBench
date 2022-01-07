
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_6__ {TYPE_1__* cur; TYPE_1__* end; } ;
typedef TYPE_2__ reshape_iter ;
struct TYPE_5__ {char* index; } ;


 int CLASS_TYPE_P (scalar_t__) ;
 int CONSTRUCTOR_APPEND_ELT (int ,scalar_t__,scalar_t__) ;
 int CONSTRUCTOR_ELTS (scalar_t__) ;
 scalar_t__ FIELD_DECL ;
 int NULL_TREE ;
 int TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TYPE_FIELDS (scalar_t__) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ build_constructor (int ,int *) ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;
 scalar_t__ lookup_field_1 (scalar_t__,char*,int) ;
 scalar_t__ next_initializable_field (int ) ;
 scalar_t__ reshape_init_r (int ,TYPE_2__*,int) ;

__attribute__((used)) static tree
reshape_init_class (tree type, reshape_iter *d, bool first_initializer_p)
{
  tree field;
  tree new_init;

  gcc_assert (CLASS_TYPE_P (type));


  new_init = build_constructor (NULL_TREE, ((void*)0));
  field = next_initializable_field (TYPE_FIELDS (type));

  if (!field)
    {





      if (!first_initializer_p)
 {
   error ("initializer for %qT must be brace-enclosed", type);
   return error_mark_node;
 }
      return new_init;
    }


  while (d->cur != d->end)
    {
      tree field_init;


      if (d->cur->index)
 {
   field = lookup_field_1 (type, d->cur->index, 0);

   if (!field || TREE_CODE (field) != FIELD_DECL)
     {
       error ("%qT has no non-static data member named %qD", type,
      d->cur->index);
       return error_mark_node;
     }
 }


      if (!field)
 break;

      field_init = reshape_init_r (TREE_TYPE (field), d,
                               0);
      CONSTRUCTOR_APPEND_ELT (CONSTRUCTOR_ELTS (new_init), field, field_init);






      if (TREE_CODE (type) == UNION_TYPE)
 break;

      field = next_initializable_field (TREE_CHAIN (field));
    }

  return new_init;
}
