
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vla_hwint_t ;
typedef TYPE_1__* ainsn_t ;
struct TYPE_4__ {int insn_equiv_class_num; } ;


 int VEC_length (int ,int ) ;
 int VEC_replace (int ,int ,int,int) ;
 int VEC_safe_push (int ,int ,int ,int ) ;
 int gcc_assert (TYPE_1__*) ;
 int heap ;
 int undefined_vect_el_value ;
 int vect_el_t ;

__attribute__((used)) static void
add_vect_el (vla_hwint_t *vect, ainsn_t ainsn, int el_value)
{
  int equiv_class_num;
  int vect_index;

  gcc_assert (ainsn);
  equiv_class_num = ainsn->insn_equiv_class_num;
  for (vect_index = VEC_length (vect_el_t, *vect);
       vect_index <= equiv_class_num;
       vect_index++)
    VEC_safe_push (vect_el_t,heap, *vect, undefined_vect_el_value);
  VEC_replace (vect_el_t, *vect, equiv_class_num, el_value);
}
