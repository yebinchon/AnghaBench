
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_9__ {TYPE_1__* cur; } ;
typedef TYPE_2__ reshape_iter ;
struct TYPE_10__ {int value; } ;
struct TYPE_8__ {int value; } ;


 scalar_t__ ARRAY_TYPE ;
 int BRACE_ENCLOSED_INITIALIZER_P (int ) ;
 scalar_t__ CLASS_TYPE_P (int ) ;
 scalar_t__ COMPOUND_LITERAL_P (int ) ;
 scalar_t__ CONSTRUCTOR ;
 int CONSTRUCTOR_ELTS (int ) ;
 int CP_AGGREGATE_TYPE_P (int ) ;
 int LOOKUP_NORMAL ;
 int OPT_Wmissing_braces ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 TYPE_7__* VEC_index (int ,int ,int ) ;
 int VEC_length (int ,int ) ;
 scalar_t__ can_convert_arg (int ,scalar_t__,int ,int ) ;
 scalar_t__ char_type_p (int ) ;
 int constructor_elt ;
 int error (char*,int ) ;
 int error_mark_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int reshape_init (int ,int ) ;
 int reshape_init_array (int ,TYPE_2__*) ;
 int reshape_init_class (int ,TYPE_2__*,int) ;
 int reshape_init_vector (int ,TYPE_2__*) ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static tree
reshape_init_r (tree type, reshape_iter *d, bool first_initializer_p)
{
  tree init = d->cur->value;



  if (!CP_AGGREGATE_TYPE_P (type))
    {





      if (TREE_CODE (init) == CONSTRUCTOR
   && BRACE_ENCLOSED_INITIALIZER_P (init))
 {
   error ("braces around scalar initializer for type %qT", type);
   init = error_mark_node;
 }

      d->cur++;
      return init;
    }
  if (TREE_CODE (init) != CONSTRUCTOR
      && can_convert_arg (type, TREE_TYPE (init), init, LOOKUP_NORMAL))
    {
      d->cur++;
      return init;
    }







  if (TREE_CODE (type) == ARRAY_TYPE
      && char_type_p (TYPE_MAIN_VARIANT (TREE_TYPE (type))))
    {
      tree str_init = init;



      if (!first_initializer_p
   && TREE_CODE (str_init) == CONSTRUCTOR
   && VEC_length (constructor_elt, CONSTRUCTOR_ELTS (str_init)) == 1)
 {
   str_init = VEC_index (constructor_elt,
    CONSTRUCTOR_ELTS (str_init), 0)->value;
 }




      if (TREE_CODE (str_init) == STRING_CST)
 {
   d->cur++;
   return str_init;
 }
    }





  if (!first_initializer_p)
    {
      if (TREE_CODE (init) == CONSTRUCTOR)
 {
   if (TREE_TYPE (init) && TYPE_PTRMEMFUNC_P (TREE_TYPE (init)))



           ;
   else if (COMPOUND_LITERAL_P (init))





     gcc_assert (!BRACE_ENCLOSED_INITIALIZER_P (init));
   else
     {
       ++d->cur;
       gcc_assert (BRACE_ENCLOSED_INITIALIZER_P (init));
       return reshape_init (type, init);
     }
 }

      warning (OPT_Wmissing_braces, "missing braces around initializer for %qT",
        type);
    }


  if (CLASS_TYPE_P (type))
    return reshape_init_class (type, d, first_initializer_p);
  else if (TREE_CODE (type) == ARRAY_TYPE)
    return reshape_init_array (type, d);
  else if (TREE_CODE (type) == VECTOR_TYPE)
    return reshape_init_vector (type, d);
  else
    gcc_unreachable();
}
