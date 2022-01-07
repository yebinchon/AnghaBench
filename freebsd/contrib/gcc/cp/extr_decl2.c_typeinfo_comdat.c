
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ BINFO_BASE_ITERATE (int ,int,int ) ;
 int BINFO_TYPE (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 int TYPE_BINFO (int ) ;
 scalar_t__ lookup_attribute (char*,int ) ;

__attribute__((used)) static bool
typeinfo_comdat (tree type)
{
  tree binfo, base_binfo;
  int j;

  if (lookup_attribute ("weak", TYPE_ATTRIBUTES (type)))
    return 1;

  for (binfo = TYPE_BINFO (type), j = 0;
 BINFO_BASE_ITERATE (binfo, j, base_binfo); ++j)
    {
      if (typeinfo_comdat (BINFO_TYPE (base_binfo)))
 return 1;
    }

  return 0;
}
