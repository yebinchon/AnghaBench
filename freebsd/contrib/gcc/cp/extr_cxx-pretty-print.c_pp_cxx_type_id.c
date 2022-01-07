
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int pp_flags ;
typedef int cxx_pretty_printer ;
struct TYPE_3__ {int flags; } ;
 int TREE_CODE (int ) ;





 TYPE_1__* pp_c_base (int *) ;
 int pp_c_flag_abstract ;
 int pp_c_type_id (TYPE_1__*,int ) ;
 int pp_cxx_type_specifier_seq (int *,int ) ;

__attribute__((used)) static void
pp_cxx_type_id (cxx_pretty_printer *pp, tree t)
{
  pp_flags saved_flags = pp_c_base (pp)->flags;
  pp_c_base (pp)->flags |= pp_c_flag_abstract;

  switch (TREE_CODE (t))
    {
    case 130:
    case 128:
    case 138:
    case 139:
    case 132:
    case 140:
    case 129:
    case 134:
    case 133:
    case 135:
    case 137:
    case 131:
    case 136:
      pp_cxx_type_specifier_seq (pp, t);
      break;

    default:
      pp_c_type_id (pp_c_base (pp), t);
      break;
    }

  pp_c_base (pp)->flags = saved_flags;
}
