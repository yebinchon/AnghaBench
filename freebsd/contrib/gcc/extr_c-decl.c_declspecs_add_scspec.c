
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_declspecs {int declspecs_seen_p; int inline_p; int thread_p; int storage_class; scalar_t__ non_sc_seen_p; } ;
typedef enum rid { ____Placeholder_rid } rid ;
typedef enum c_storage_class { ____Placeholder_c_storage_class } c_storage_class ;


 scalar_t__ C_IS_RESERVED_WORD (int ) ;
 int C_RID_CODE (int ) ;
 scalar_t__ IDENTIFIER_NODE ;
 int OPT_Wextra ;







 scalar_t__ TREE_CODE (int ) ;
 int csc_auto ;
 int csc_extern ;
 int csc_none ;
 int csc_register ;
 int csc_static ;
 int csc_typedef ;
 int error (char*,...) ;
 scalar_t__ extra_warnings ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int warning (int ,char*,int ) ;

struct c_declspecs *
declspecs_add_scspec (struct c_declspecs *specs, tree scspec)
{
  enum rid i;
  enum c_storage_class n = csc_none;
  bool dupe = 0;
  specs->declspecs_seen_p = 1;
  gcc_assert (TREE_CODE (scspec) == IDENTIFIER_NODE
       && C_IS_RESERVED_WORD (scspec));
  i = C_RID_CODE (scspec);
  if (extra_warnings && specs->non_sc_seen_p)
    warning (OPT_Wextra, "%qE is not at beginning of declaration", scspec);
  switch (i)
    {
    case 132:




      dupe = 0;
      specs->inline_p = 1;
      break;
    case 129:
      dupe = specs->thread_p;
      if (specs->storage_class == csc_auto)
 error ("%<__thread%> used with %<auto%>");
      else if (specs->storage_class == csc_register)
 error ("%<__thread%> used with %<register%>");
      else if (specs->storage_class == csc_typedef)
 error ("%<__thread%> used with %<typedef%>");
      else
 specs->thread_p = 1;
      break;
    case 134:
      n = csc_auto;
      break;
    case 133:
      n = csc_extern;

      if (specs->thread_p)
 error ("%<__thread%> before %<extern%>");
      break;
    case 131:
      n = csc_register;
      break;
    case 130:
      n = csc_static;

      if (specs->thread_p)
 error ("%<__thread%> before %<static%>");
      break;
    case 128:
      n = csc_typedef;
      break;
    default:
      gcc_unreachable ();
    }
  if (n != csc_none && n == specs->storage_class)
    dupe = 1;
  if (dupe)
    error ("duplicate %qE", scspec);
  if (n != csc_none)
    {
      if (specs->storage_class != csc_none && n != specs->storage_class)
 {
   error ("multiple storage classes in declaration specifiers");
 }
      else
 {
   specs->storage_class = n;
   if (n != csc_extern && n != csc_static && specs->thread_p)
     {
       error ("%<__thread%> used with %qE", scspec);
       specs->thread_p = 0;
     }
 }
    }
  return specs;
}
