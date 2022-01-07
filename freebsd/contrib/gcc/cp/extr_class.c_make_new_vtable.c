
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int build_primary_vtable (scalar_t__,scalar_t__) ;
 int build_secondary_vtable (scalar_t__) ;

__attribute__((used)) static int
make_new_vtable (tree t, tree binfo)
{
  if (binfo == TYPE_BINFO (t))



    return build_primary_vtable (binfo, t);
  else




    return build_secondary_vtable (binfo);
}
