
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vla_hwint_t ;
typedef TYPE_2__* automaton_t ;
typedef TYPE_3__* ainsn_t ;
struct TYPE_10__ {int insns_num; } ;
struct TYPE_9__ {int insn_equiv_class_num; TYPE_1__* insn_reserv_decl; struct TYPE_9__* next_ainsn; } ;
struct TYPE_8__ {int insn_equiv_classes_num; TYPE_3__* ainsn_list; } ;
struct TYPE_7__ {int insn_num; } ;


 int VEC_alloc (int ,int ,int) ;
 int VEC_free (int ,int ,int ) ;
 int VEC_quick_push (int ,int ,int ) ;
 int VEC_replace (int ,int ,int ,int ) ;
 TYPE_6__* description ;
 int fprintf (int ,char*) ;
 int heap ;
 int output_file ;
 int output_range_type (int ,int ,int ) ;
 int output_translate_vect_name (int ,TYPE_2__*) ;
 int output_vect (int ) ;
 int vect_el_t ;

__attribute__((used)) static void
output_translate_vect (automaton_t automaton)
{
  ainsn_t ainsn;
  int insn_value;
  vla_hwint_t translate_vect;

  translate_vect = VEC_alloc (vect_el_t,heap, description->insns_num);

  for (insn_value = 0; insn_value < description->insns_num; insn_value++)

    VEC_quick_push (vect_el_t, translate_vect,
      automaton->insn_equiv_classes_num);

  for (ainsn = automaton->ainsn_list; ainsn != ((void*)0); ainsn = ainsn->next_ainsn)
    VEC_replace (vect_el_t, translate_vect,
   ainsn->insn_reserv_decl->insn_num,
   ainsn->insn_equiv_class_num);

  fprintf (output_file,
           "/* Vector translating external insn codes to internal ones.*/\n");
  fprintf (output_file, "static const ");
  output_range_type (output_file, 0, automaton->insn_equiv_classes_num);
  fprintf (output_file, " ");
  output_translate_vect_name (output_file, automaton);
  fprintf (output_file, "[] ATTRIBUTE_UNUSED = {\n");
  output_vect (translate_vect);
  fprintf (output_file, "};\n\n");
  VEC_free (vect_el_t,heap, translate_vect);
}
