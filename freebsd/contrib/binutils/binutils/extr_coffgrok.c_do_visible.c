
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct internal_syment {int n_sclass; int n_value; int n_scnum; } ;
struct coff_visible {int type; } ;
typedef enum coff_vis_type { ____Placeholder_coff_vis_type } coff_vis_type ;
struct TYPE_3__ {struct internal_syment syment; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
 int N_UNDEF ;
 int abort () ;
 int coff_vis_auto ;
 int coff_vis_autoparam ;
 int coff_vis_common ;
 int coff_vis_ext_def ;
 int coff_vis_ext_ref ;
 int coff_vis_int_def ;
 int coff_vis_member_of_enum ;
 int coff_vis_member_of_struct ;
 int coff_vis_register ;
 int coff_vis_regparam ;
 int coff_vis_tag ;
 TYPE_2__* rawsyms ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct coff_visible *
do_visible (int i)
{
  struct internal_syment *sym = &rawsyms[i].u.syment;
  struct coff_visible *visible =
    (struct coff_visible *) (xmalloc (sizeof (struct coff_visible)));
  enum coff_vis_type t;
  switch (sym->n_sclass)
    {
    case 135:
    case 134:
    case 138:
      t = coff_vis_member_of_struct;
      break;
    case 136:
      t = coff_vis_member_of_enum;
      break;

    case 132:
      t = coff_vis_regparam;
      break;

    case 133:
      t = coff_vis_register;
      break;
    case 130:
    case 128:
    case 140:
    case 129:
      t = coff_vis_tag;
      break;
    case 141:
    case 143:
      t = coff_vis_autoparam;
      break;
    case 142:


      t = coff_vis_auto;
      break;
    case 137:
    case 131:
      t = coff_vis_int_def;
      break;
    case 139:
      if (sym->n_scnum == N_UNDEF)
 {
   if (sym->n_value)
     t = coff_vis_common;
   else
     t = coff_vis_ext_ref;
 }
      else
 t = coff_vis_ext_def;
      break;
    default:
      abort ();
      break;

    }
  visible->type = t;
  return visible;
}
