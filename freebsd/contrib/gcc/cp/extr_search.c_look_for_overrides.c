
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ BINFO_BASE_ITERATE (int ,int,int ) ;
 int BINFO_TYPE (int ) ;
 int TYPE_BINFO (int ) ;
 scalar_t__ TYPE_POLYMORPHIC_P (int ) ;
 scalar_t__ look_for_overrides_r (int ,int ) ;

int
look_for_overrides (tree type, tree fndecl)
{
  tree binfo = TYPE_BINFO (type);
  tree base_binfo;
  int ix;
  int found = 0;

  for (ix = 0; BINFO_BASE_ITERATE (binfo, ix, base_binfo); ix++)
    {
      tree basetype = BINFO_TYPE (base_binfo);

      if (TYPE_POLYMORPHIC_P (basetype))
 found += look_for_overrides_r (basetype, fndecl);
    }
  return found;
}
