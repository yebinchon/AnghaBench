
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int section ;
struct TYPE_3__ {int * (* select_section ) (int ,int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ have_switchable_bss_sections; } ;


 int DECL_ALIGN (int ) ;
 scalar_t__ DECL_COMMON (int ) ;
 scalar_t__ DECL_INITIAL (int ) ;
 int * DECL_SECTION_NAME (int ) ;
 scalar_t__ DECL_THREAD_LOCAL_P (int ) ;
 scalar_t__ IN_NAMED_SECTION (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ bss_initializer_p (int ) ;
 int * bss_noswitch_section ;
 int * comm_section ;
 int compute_reloc_for_constant (scalar_t__) ;
 scalar_t__ contains_pointers_p (int ) ;
 scalar_t__ error_mark_node ;
 int flag_data_sections ;
 int * get_named_section (int ,int *,int) ;
 int * lcomm_section ;
 int resolve_unique_section (int ,int,int ) ;
 int * stub1 (int ,int,int ) ;
 TYPE_2__ targetm ;
 int * tls_comm_section ;

__attribute__((used)) static section *
get_variable_section (tree decl, bool prefer_noswitch_p)
{
  int reloc;



  if (DECL_COMMON (decl) && DECL_SECTION_NAME (decl) == ((void*)0))
    {
      if (DECL_THREAD_LOCAL_P (decl))
 return tls_comm_section;
      if (TREE_PUBLIC (decl) && bss_initializer_p (decl))
 return comm_section;
    }

  if (DECL_INITIAL (decl) == error_mark_node)
    reloc = contains_pointers_p (TREE_TYPE (decl)) ? 3 : 0;
  else if (DECL_INITIAL (decl))
    reloc = compute_reloc_for_constant (DECL_INITIAL (decl));
  else
    reloc = 0;

  resolve_unique_section (decl, reloc, flag_data_sections);
  if (IN_NAMED_SECTION (decl))
    return get_named_section (decl, ((void*)0), reloc);

  if (!DECL_THREAD_LOCAL_P (decl)
      && !(prefer_noswitch_p && targetm.have_switchable_bss_sections)
      && bss_initializer_p (decl))
    {
      if (!TREE_PUBLIC (decl))
 return lcomm_section;
      if (bss_noswitch_section)
 return bss_noswitch_section;
    }

  return targetm.asm_out.select_section (decl, reloc, DECL_ALIGN (decl));
}
