
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang_memory_region_type ;
typedef scalar_t__ bfd_boolean ;


 int DEFAULT_MEMORY_REGION ;
 int FALSE ;
 int _ (char*) ;
 int einfo (int ) ;
 int * lang_memory_region_lookup (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void
lang_get_regions (lang_memory_region_type **region,
    lang_memory_region_type **lma_region,
    const char *memspec,
    const char *lma_memspec,
    bfd_boolean have_lma,
    bfd_boolean have_vma)
{
  *lma_region = lang_memory_region_lookup (lma_memspec, FALSE);




  if (lma_memspec != ((void*)0)
      && ! have_vma
      && strcmp (memspec, DEFAULT_MEMORY_REGION) == 0)
    *region = *lma_region;
  else
    *region = lang_memory_region_lookup (memspec, FALSE);

  if (have_lma && lma_memspec != 0)
    einfo (_("%X%P:%S: section has both a load address and a load region\n"));
}
