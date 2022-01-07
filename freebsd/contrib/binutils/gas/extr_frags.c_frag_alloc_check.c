
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obstack {scalar_t__ chunk_size; } ;


 int _ (char*) ;
 int as_bad (int ) ;
 int * mri_common_symbol ;
 int subseg_set (int ,int ) ;
 int text_section ;

__attribute__((used)) static void
frag_alloc_check (const struct obstack *ob)
{
  if (ob->chunk_size == 0)
    {
      as_bad (_("attempt to allocate data in absolute section"));
      subseg_set (text_section, 0);
    }

  if (mri_common_symbol != ((void*)0))
    {
      as_bad (_("attempt to allocate data in common section"));
      mri_common_symbol = ((void*)0);
    }
}
