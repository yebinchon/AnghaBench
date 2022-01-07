
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int mep_lookup_global (char*,int ,int *,int *) ;
 int warn_sda ;

__attribute__((used)) static bfd_vma
mep_sdaoff_base (bfd_vma ofs)
{
  static bfd_vma cache = 0;
  return mep_lookup_global ("__sdabase", ofs, &cache, &warn_sda);
}
