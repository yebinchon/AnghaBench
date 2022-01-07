
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VECTOR_TYPE ;
 int build_vector_type (scalar_t__,int) ;
 int gcc_assert (int) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ stub1 (int ,int) ;
 int type_hash_canon (int,int ) ;
 scalar_t__ vector_inner_type ;
 int vector_last_nunits ;
 int vector_last_type ;
 int word_mode ;

__attribute__((used)) static tree
build_word_mode_vector_type (int nunits)
{
  if (!vector_inner_type)
    vector_inner_type = lang_hooks.types.type_for_mode (word_mode, 1);
  else if (vector_last_nunits == nunits)
    {
      gcc_assert (TREE_CODE (vector_last_type) == VECTOR_TYPE);
      return vector_last_type;
    }



  vector_last_nunits = nunits;
  vector_last_type = type_hash_canon (nunits,
          build_vector_type (vector_inner_type,
        nunits));
  return vector_last_type;
}
