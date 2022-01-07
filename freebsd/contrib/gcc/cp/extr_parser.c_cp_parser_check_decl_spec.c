
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* specs; } ;
typedef TYPE_1__ cp_decl_specifier_seq ;
typedef scalar_t__ cp_decl_spec ;


 scalar_t__ ds_first ;
 scalar_t__ ds_last ;
 scalar_t__ ds_long ;
 int error (char*,...) ;
 int in_system_header ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 scalar_t__ warn_long_long ;

__attribute__((used)) static void
cp_parser_check_decl_spec (cp_decl_specifier_seq *decl_specs)
{
  cp_decl_spec ds;

  for (ds = ds_first; ds != ds_last; ++ds)
    {
      unsigned count = decl_specs->specs[(int)ds];
      if (count < 2)
 continue;

      if (ds == ds_long)
 {
   if (count > 2)
     error ("%<long long long%> is too long for GCC");
   else if (pedantic && !in_system_header && warn_long_long)
     pedwarn ("ISO C++ does not support %<long long%>");
 }
      else if (count > 1)
 {
   static const char *const decl_spec_names[] = {
     "signed",
     "unsigned",
     "short",
     "long",
     "const",
     "volatile",
     "restrict",
     "inline",
     "virtual",
     "explicit",
     "friend",
     "typedef",
     "__complex",
     "__thread"
   };
   error ("duplicate %qs", decl_spec_names[(int)ds]);
 }
    }
}
