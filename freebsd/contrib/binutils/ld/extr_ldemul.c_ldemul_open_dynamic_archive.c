
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int search_dirs_type ;
typedef int lang_input_statement_type ;
typedef int bfd_boolean ;
struct TYPE_2__ {int (* open_dynamic_archive ) (char const*,int *,int *) ;} ;


 int FALSE ;
 TYPE_1__* ld_emulation ;
 int stub1 (char const*,int *,int *) ;

bfd_boolean
ldemul_open_dynamic_archive (const char *arch, search_dirs_type *search,
        lang_input_statement_type *entry)
{
  if (ld_emulation->open_dynamic_archive)
    return (*ld_emulation->open_dynamic_archive) (arch, search, entry);
  return FALSE;
}
