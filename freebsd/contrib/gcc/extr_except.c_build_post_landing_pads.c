
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_11__ {int filter; } ;
struct TYPE_9__ {struct eh_region* catch; } ;
struct TYPE_8__ {int * filter_list; int * type_list; struct eh_region* next_catch; } ;
struct TYPE_12__ {TYPE_4__ allowed; TYPE_2__ try; TYPE_1__ catch; } ;
struct eh_region {int region_number; int type; void* label; void* post_landing_pad; void* resume; TYPE_5__ u; } ;
typedef int rtx ;
struct TYPE_14__ {TYPE_3__* eh; } ;
struct TYPE_13__ {int (* eh_return_filter_mode ) () ;} ;
struct TYPE_10__ {int last_region_number; int filter; int region_array; } ;


 int EQ ;






 int GEN_INT (int ) ;
 int NULL_RTX ;
 int * TREE_CHAIN (int *) ;
 int TREE_VALUE (int *) ;
 struct eh_region* VEC_index (int ,int ,int) ;
 int VOIDmode ;
 TYPE_7__* cfun ;
 int eh_region ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int ,int ,void*) ;
 int emit_jump (void*) ;
 void* emit_jump_insn (int ) ;
 int emit_label (void*) ;
 int emit_to_new_bb_before (int ,void*) ;
 int end_sequence () ;
 int gcc_unreachable () ;
 void* gen_label_rtx () ;
 int gen_rtx_RESX (int ,int) ;
 int get_insns () ;
 int start_sequence () ;
 int stub1 () ;
 int stub2 () ;
 TYPE_6__ targetm ;
 int tree_low_cst (int ,int ) ;

__attribute__((used)) static void
build_post_landing_pads (void)
{
  int i;

  for (i = cfun->eh->last_region_number; i > 0; --i)
    {
      struct eh_region *region;
      rtx seq;

      region = VEC_index (eh_region, cfun->eh->region_array, i);

      if (!region || region->region_number != i)
 continue;

      switch (region->type)
 {
 case 128:






   region->post_landing_pad = gen_label_rtx ();

   start_sequence ();

   emit_label (region->post_landing_pad);




   {
     struct eh_region *c;
     for (c = region->u.try.catch; c ; c = c->u.catch.next_catch)
       {
  if (c->u.catch.type_list == ((void*)0))
    emit_jump (c->label);
  else
    {



      tree tp_node = c->u.catch.type_list;
      tree flt_node = c->u.catch.filter_list;

      for (; tp_node; )
        {
   emit_cmp_and_jump_insns
     (cfun->eh->filter,
      GEN_INT (tree_low_cst (TREE_VALUE (flt_node), 0)),
      EQ, NULL_RTX,
      targetm.eh_return_filter_mode (), 0, c->label);

   tp_node = TREE_CHAIN (tp_node);
   flt_node = TREE_CHAIN (flt_node);
        }
    }
       }
   }




   region->resume
     = emit_jump_insn (gen_rtx_RESX (VOIDmode, region->region_number));
   emit_barrier ();

   seq = get_insns ();
   end_sequence ();

   emit_to_new_bb_before (seq, region->u.try.catch->label);

   break;

 case 133:
   region->post_landing_pad = gen_label_rtx ();

   start_sequence ();

   emit_label (region->post_landing_pad);

   emit_cmp_and_jump_insns (cfun->eh->filter,
       GEN_INT (region->u.allowed.filter),
       EQ, NULL_RTX,
       targetm.eh_return_filter_mode (), 0, region->label);




   region->resume
     = emit_jump_insn (gen_rtx_RESX (VOIDmode, region->region_number));
   emit_barrier ();

   seq = get_insns ();
   end_sequence ();

   emit_to_new_bb_before (seq, region->label);
   break;

 case 131:
 case 130:
   region->post_landing_pad = region->label;
   break;

 case 132:
 case 129:

   break;

 default:
   gcc_unreachable ();
 }
    }
}
