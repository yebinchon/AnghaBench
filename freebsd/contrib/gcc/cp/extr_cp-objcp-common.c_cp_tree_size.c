
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template_parm_index ;
struct tree_overload {int dummy; } ;
struct tree_default_arg {int dummy; } ;
struct tree_baselink {int dummy; } ;
struct tinst_level_s {int dummy; } ;
struct ptrmem_cst {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
 int gcc_unreachable () ;

size_t
cp_tree_size (enum tree_code code)
{
  switch (code)
    {
    case 128: return sizeof (struct tinst_level_s);
    case 130: return sizeof (struct ptrmem_cst);
    case 133: return sizeof (struct tree_baselink);
    case 129: return sizeof (template_parm_index);
    case 132: return sizeof (struct tree_default_arg);
    case 131: return sizeof (struct tree_overload);
    default:
      gcc_unreachable ();
    }

}
