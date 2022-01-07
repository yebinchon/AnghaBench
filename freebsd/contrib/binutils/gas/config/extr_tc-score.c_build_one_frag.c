
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct score_it {int size; int relax_size; int relax_inst; int type; int instruction; } ;
struct TYPE_4__ {int is_insn; } ;
struct TYPE_5__ {TYPE_1__ tc_frag_data; } ;


 int RELAX_ENCODE (int,int,int ,int ,int ,int) ;
 scalar_t__ RELAX_PAD_BYTE ;
 int dwarf2_emit_insn (int) ;
 int frag_grow (int) ;
 char* frag_more (int) ;
 int frag_new (int ) ;
 TYPE_2__* frag_now ;
 scalar_t__ frag_now_fix () ;
 char* frag_var (int ,scalar_t__,int ,int ,int *,int ,int *) ;
 int frag_wane (TYPE_2__*) ;
 int g_opt ;
 int md_number_to_chars (char*,int ,int) ;
 int rs_machine_dependent ;

__attribute__((used)) static void
build_one_frag (struct score_it one_inst)
{
  char *p;
  int relaxable_p = g_opt;
  int relax_size = 0;


  if (frag_now_fix () != 0)
    {
      if (!frag_now->tc_frag_data.is_insn)
 frag_wane (frag_now);

      frag_new (0);
    }
  frag_grow (20);

  p = frag_more (one_inst.size);
  md_number_to_chars (p, one_inst.instruction, one_inst.size);





  relaxable_p &= (one_inst.relax_size != 0);
  relax_size = relaxable_p ? one_inst.relax_size : 0;

  p = frag_var (rs_machine_dependent, relax_size + RELAX_PAD_BYTE, 0,
                RELAX_ENCODE (one_inst.size, one_inst.relax_size,
                              one_inst.type, 0, 0, relaxable_p),
                ((void*)0), 0, ((void*)0));

  if (relaxable_p)
    md_number_to_chars (p, one_inst.relax_inst, relax_size);
}
