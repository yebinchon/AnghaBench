
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int n_sclass; int n_type; } ;
struct TYPE_12__ {TYPE_1__ syment; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
typedef TYPE_3__ combined_entry_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_14__ {int symbol; scalar_t__ alignment_power; } ;
typedef TYPE_4__ asection ;
struct TYPE_15__ {TYPE_3__* native; } ;


 scalar_t__ COFF_DEFAULT_SECTION_ALIGNMENT_POWER ;
 int C_STAT ;
 int FALSE ;
 int TRUE ;
 int T_NULL ;
 int _bfd_generic_new_section_hook (int *,TYPE_4__*) ;
 int bfd_get_section_name (int *,TYPE_4__*) ;
 scalar_t__ bfd_xcoff_data_align_power (int *) ;
 scalar_t__ bfd_xcoff_text_align_power (int *) ;
 TYPE_3__* bfd_zalloc (int *,int) ;
 int coff_section_alignment_table ;
 int coff_section_alignment_table_size ;
 int coff_set_custom_section_alignment (int *,TYPE_4__*,int ,int ) ;
 TYPE_5__* coffsymbol (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bfd_boolean
coff_new_section_hook (bfd * abfd, asection * section)
{
  combined_entry_type *native;
  bfd_size_type amt;

  section->alignment_power = COFF_DEFAULT_SECTION_ALIGNMENT_POWER;
  if (!_bfd_generic_new_section_hook (abfd, section))
    return FALSE;






  amt = sizeof (combined_entry_type) * 10;
  native = bfd_zalloc (abfd, amt);
  if (native == ((void*)0))
    return FALSE;







  native->u.syment.n_type = T_NULL;
  native->u.syment.n_sclass = C_STAT;

  coffsymbol (section->symbol)->native = native;

  coff_set_custom_section_alignment (abfd, section,
         coff_section_alignment_table,
         coff_section_alignment_table_size);

  return TRUE;
}
