
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_local_info {scalar_t__ local; } ;


 int TARGET_64BIT ;
 int TARGET_SSE ;
 scalar_t__ TARGET_SSE2 ;
 scalar_t__ TARGET_SSEREGPARM ;
 scalar_t__ TARGET_SSE_MATH ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 struct cgraph_local_info* cgraph_local_info (scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ flag_unit_at_a_time ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int profile_flag ;

__attribute__((used)) static int
ix86_function_sseregparm (tree type, tree decl)
{


  if (TARGET_SSEREGPARM
      || (type
   && lookup_attribute ("sseregparm", TYPE_ATTRIBUTES (type))))
    {
      if (!TARGET_SSE)
 {
   if (decl)
     error ("Calling %qD with attribute sseregparm without "
     "SSE/SSE2 enabled", decl);
   else
     error ("Calling %qT with attribute sseregparm without "
     "SSE/SSE2 enabled", type);
   return 0;
 }

      return 2;
    }




  if (!TARGET_64BIT && decl
      && TARGET_SSE_MATH && flag_unit_at_a_time && !profile_flag)
    {
      struct cgraph_local_info *i = cgraph_local_info (decl);
      if (i && i->local)
 return TARGET_SSE2 ? 2 : 1;
    }

  return 0;
}
