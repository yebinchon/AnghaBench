
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const* tree ;
typedef int location_t ;


 int pedwarn (char*,...) ;

__attribute__((used)) static void
identify_goto (tree decl, const location_t *locus)
{
  if (decl)
    pedwarn ("jump to label %qD", decl);
  else
    pedwarn ("jump to case label");
  if (locus)
    pedwarn ("%H  from here", locus);
}
