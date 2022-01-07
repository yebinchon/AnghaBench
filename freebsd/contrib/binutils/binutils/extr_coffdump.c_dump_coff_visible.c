
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_visible {int type; } ;


 int abort () ;
 int nl () ;
 int printf (char*) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_visible (struct coff_visible *p)
{
  tab (1);
  switch (p->type)
    {
    case 135:
      printf ("coff_vis_ext_def");
      break;
    case 134:
      printf ("coff_vis_ext_ref");
      break;
    case 133:
      printf ("coff_vis_int_def");
      break;
    case 136:
      printf ("coff_vis_common");
      break;
    case 138:
      printf ("coff_vis_auto");
      break;
    case 137:
      printf ("coff_vis_autoparam");
      break;
    case 129:
      printf ("coff_vis_regparam");
      break;
    case 130:
      printf ("coff_vis_register");
      break;
    case 128:
      printf ("coff_vis_tag");
      break;
    case 131:
      printf ("coff_vis_member_of_struct");
      break;
    case 132:
      printf ("coff_vis_member_of_enum");
      break;
    default:
      abort ();
    }
  nl ();
  tab (-1);
}
