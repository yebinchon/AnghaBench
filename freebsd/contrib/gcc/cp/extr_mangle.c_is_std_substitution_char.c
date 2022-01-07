
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int substitution_identifier_index_t ;


 int CLASSTYPE_TI_ARGS (int const) ;
 scalar_t__ CLASS_TYPE_P (int const) ;
 scalar_t__ DECL_P (int const) ;
 int DECL_TI_ARGS (int const) ;
 scalar_t__ TREE_VEC_ELT (int ,int ) ;
 int TREE_VEC_LENGTH (int ) ;
 scalar_t__ char_type_node ;
 int is_std_substitution (int const,int const) ;

__attribute__((used)) static inline int
is_std_substitution_char (const tree node,
     const substitution_identifier_index_t index)
{
  tree args;

  if (!is_std_substitution (node, index))
    return 0;

  if (DECL_P (node))
    args = DECL_TI_ARGS (node);
  else if (CLASS_TYPE_P (node))
    args = CLASSTYPE_TI_ARGS (node);
  else

    return 0;

  return
    TREE_VEC_LENGTH (args) == 1
    && TREE_VEC_ELT (args, 0) == char_type_node;
}
