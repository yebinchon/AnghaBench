
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ cur; scalar_t__ end; } ;
typedef TYPE_1__ reshape_iter ;


 int BRACE_ENCLOSED_INITIALIZER_P (scalar_t__) ;
 int CONSTRUCTOR_ELTS (scalar_t__) ;
 int VEC (int ,int ) ;
 scalar_t__ VEC_empty (int ,int) ;
 scalar_t__ VEC_index (int ,int,int ) ;
 scalar_t__ VEC_length (int ,int) ;
 int constructor_elt ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gc ;
 int gcc_assert (int ) ;
 scalar_t__ reshape_init_r (scalar_t__,TYPE_1__*,int) ;
 int v ;

tree
reshape_init (tree type, tree init)
{
  VEC(constructor_elt, gc) *v;
  reshape_iter d;
  tree new_init;

  gcc_assert (BRACE_ENCLOSED_INITIALIZER_P (init));

  v = CONSTRUCTOR_ELTS (init);



  if (VEC_empty (constructor_elt, v))
    return init;


  d.cur = VEC_index (constructor_elt, v, 0);
  d.end = d.cur + VEC_length (constructor_elt, v);

  new_init = reshape_init_r (type, &d, 1);
  if (new_init == error_mark_node)
    return error_mark_node;



  if (d.cur != d.end)
    error ("too many initializers for %qT", type);

  return new_init;
}
