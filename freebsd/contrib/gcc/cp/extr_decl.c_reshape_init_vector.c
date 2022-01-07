
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* tree ;
struct TYPE_6__ {TYPE_1__* cur; } ;
typedef TYPE_2__ reshape_iter ;
struct TYPE_5__ {char* value; } ;


 scalar_t__ COMPOUND_LITERAL_P (char*) ;
 char* NULL_TREE ;
 scalar_t__ TREE_CODE (char*) ;
 int TREE_TYPE (char*) ;
 char* TYPE_DEBUG_REPRESENTATION_TYPE (char*) ;
 scalar_t__ TYPE_DOMAIN (int ) ;
 char* TYPE_FIELDS (char*) ;
 scalar_t__ VECTOR_TYPE ;
 char* array_type_nelts (int ) ;
 int error (char*,int ,char*) ;
 char* error_mark_node ;
 int gcc_assert (int) ;
 char* reshape_init_array_1 (int ,char*,TYPE_2__*) ;
 int same_type_p (int ,char*) ;

__attribute__((used)) static tree
reshape_init_vector (tree type, reshape_iter *d)
{
  tree max_index = NULL_TREE;
  tree rtype;

  gcc_assert (TREE_CODE (type) == VECTOR_TYPE);

  if (COMPOUND_LITERAL_P (d->cur->value))
    {
      tree value = d->cur->value;
      if (!same_type_p (TREE_TYPE (value), type))
 {
   error ("invalid type %qT as initializer for a vector of type %qT",
  TREE_TYPE (d->cur->value), type);
   value = error_mark_node;
 }
      ++d->cur;
      return value;
    }




  rtype = TYPE_DEBUG_REPRESENTATION_TYPE (type);
  if (rtype && TYPE_DOMAIN (TREE_TYPE (TYPE_FIELDS (rtype))))
    max_index = array_type_nelts (TREE_TYPE (TYPE_FIELDS (rtype)));

  return reshape_init_array_1 (TREE_TYPE (type), max_index, d);
}
