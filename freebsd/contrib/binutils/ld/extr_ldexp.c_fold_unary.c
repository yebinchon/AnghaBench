
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int node_code; } ;
struct TYPE_8__ {int child; } ;
struct TYPE_12__ {TYPE_2__ type; TYPE_1__ unary; } ;
typedef TYPE_5__ etree_type ;
struct TYPE_11__ {int value; void* valid_p; } ;
struct TYPE_10__ {int end; int phase; } ;
struct TYPE_13__ {TYPE_4__ result; TYPE_3__ dataseg; int phase; int section; int dot; } ;





 int FAIL () ;
 void* FALSE ;

 int align_n (int ,int) ;
 int bfd_abs_section_ptr ;
 int exp_dataseg_adjust ;
 int exp_dataseg_align_seen ;
 int exp_dataseg_end_seen ;
 int exp_dataseg_relro_adjust ;
 int exp_dataseg_relro_seen ;
 int exp_fold_tree_1 (int ) ;
 TYPE_7__ expld ;
 int lang_final_phase_enum ;
 int lang_first_phase_enum ;
 int make_abs () ;
 int new_rel_from_abs (int) ;

__attribute__((used)) static void
fold_unary (etree_type *tree)
{
  exp_fold_tree_1 (tree->unary.child);
  if (expld.result.valid_p)
    {
      switch (tree->type.node_code)
 {
 case 130:
   if (expld.phase != lang_first_phase_enum)
     new_rel_from_abs (align_n (expld.dot, expld.result.value));
   else
     expld.result.valid_p = FALSE;
   break;

 case 131:
   make_abs ();
   break;

 case '~':
   make_abs ();
   expld.result.value = ~expld.result.value;
   break;

 case '!':
   make_abs ();
   expld.result.value = !expld.result.value;
   break;

 case '-':
   make_abs ();
   expld.result.value = -expld.result.value;
   break;

 case 128:

   if (expld.phase != lang_first_phase_enum)
     {
       make_abs ();
       expld.result.value = align_n (expld.dot, expld.result.value);
     }
   else
     expld.result.valid_p = FALSE;
   break;

 case 129:
   if (expld.phase != lang_first_phase_enum
       && expld.section == bfd_abs_section_ptr
       && (expld.dataseg.phase == exp_dataseg_align_seen
    || expld.dataseg.phase == exp_dataseg_relro_seen
    || expld.dataseg.phase == exp_dataseg_adjust
    || expld.dataseg.phase == exp_dataseg_relro_adjust
    || expld.phase == lang_final_phase_enum))
     {
       if (expld.dataseg.phase == exp_dataseg_align_seen
    || expld.dataseg.phase == exp_dataseg_relro_seen)
  {
    expld.dataseg.phase = exp_dataseg_end_seen;
    expld.dataseg.end = expld.result.value;
  }
     }
   else
     expld.result.valid_p = FALSE;
   break;

 default:
   FAIL ();
   break;
 }
    }
}
