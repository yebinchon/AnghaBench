
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_NUNITS (int) ;



 int TREE_INT_CST_LOW (int ) ;
 int TYPE_SIZE (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int make_vector_type (int ,int,int) ;

tree
build_vector_type_for_mode (tree innertype, enum machine_mode mode)
{
  int nunits;

  switch (GET_MODE_CLASS (mode))
    {
    case 128:
    case 129:
      nunits = GET_MODE_NUNITS (mode);
      break;

    case 130:

      gcc_assert (GET_MODE_BITSIZE (mode)
    % TREE_INT_CST_LOW (TYPE_SIZE (innertype)) == 0);

      nunits = GET_MODE_BITSIZE (mode)
        / TREE_INT_CST_LOW (TYPE_SIZE (innertype));
      break;

    default:
      gcc_unreachable ();
    }

  return make_vector_type (innertype, nunits, mode);
}
