
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_declspecs {int non_sc_seen_p; int declspecs_seen_p; int const_p; int volatile_p; int restrict_p; } ;
typedef enum rid { ____Placeholder_rid } rid ;


 scalar_t__ C_IS_RESERVED_WORD (int ) ;
 int C_RID_CODE (int ) ;
 scalar_t__ IDENTIFIER_NODE ;



 scalar_t__ TREE_CODE (int ) ;
 int flag_isoc99 ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ pedantic ;
 int pedwarn (char*,int ) ;

struct c_declspecs *
declspecs_add_qual (struct c_declspecs *specs, tree qual)
{
  enum rid i;
  bool dupe = 0;
  specs->non_sc_seen_p = 1;
  specs->declspecs_seen_p = 1;
  gcc_assert (TREE_CODE (qual) == IDENTIFIER_NODE
       && C_IS_RESERVED_WORD (qual));
  i = C_RID_CODE (qual);
  switch (i)
    {
    case 130:
      dupe = specs->const_p;
      specs->const_p = 1;
      break;
    case 128:
      dupe = specs->volatile_p;
      specs->volatile_p = 1;
      break;
    case 129:
      dupe = specs->restrict_p;
      specs->restrict_p = 1;
      break;
    default:
      gcc_unreachable ();
    }
  if (dupe && pedantic && !flag_isoc99)
    pedwarn ("duplicate %qE", qual);
  return specs;
}
