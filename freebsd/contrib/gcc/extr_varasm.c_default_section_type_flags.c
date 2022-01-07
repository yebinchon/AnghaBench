
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {char* unlikely_text_section_name; } ;


 scalar_t__ DECL_ONE_ONLY (scalar_t__) ;
 scalar_t__ DECL_THREAD_LOCAL_P (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 unsigned int SECTION_BSS ;
 unsigned int SECTION_CODE ;
 unsigned int SECTION_LINKONCE ;
 unsigned int SECTION_NOTYPE ;
 unsigned int SECTION_TLS ;
 unsigned int SECTION_WRITE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 char* UNLIKELY_EXECUTED_TEXT_SECTION_NAME ;
 scalar_t__ VAR_DECL ;
 TYPE_1__* cfun ;
 scalar_t__ current_function_decl ;
 scalar_t__ decl_readonly_section (scalar_t__,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

unsigned int
default_section_type_flags (tree decl, const char *name, int reloc)
{
  unsigned int flags;

  if (decl && TREE_CODE (decl) == FUNCTION_DECL)
    flags = SECTION_CODE;
  else if (decl && decl_readonly_section (decl, reloc))
    flags = 0;
  else if (current_function_decl
    && cfun
    && cfun->unlikely_text_section_name
    && strcmp (name, cfun->unlikely_text_section_name) == 0)
    flags = SECTION_CODE;
  else if (!decl
    && (!current_function_decl || !cfun)
    && strcmp (name, UNLIKELY_EXECUTED_TEXT_SECTION_NAME) == 0)
    flags = SECTION_CODE;
  else
    flags = SECTION_WRITE;

  if (decl && DECL_ONE_ONLY (decl))
    flags |= SECTION_LINKONCE;

  if (decl && TREE_CODE (decl) == VAR_DECL && DECL_THREAD_LOCAL_P (decl))
    flags |= SECTION_TLS | SECTION_WRITE;

  if (strcmp (name, ".bss") == 0
      || strncmp (name, ".bss.", 5) == 0
      || strncmp (name, ".gnu.linkonce.b.", 16) == 0
      || strcmp (name, ".sbss") == 0
      || strncmp (name, ".sbss.", 6) == 0
      || strncmp (name, ".gnu.linkonce.sb.", 17) == 0)
    flags |= SECTION_BSS;

  if (strcmp (name, ".tdata") == 0
      || strncmp (name, ".tdata.", 7) == 0
      || strncmp (name, ".gnu.linkonce.td.", 17) == 0)
    flags |= SECTION_TLS;

  if (strcmp (name, ".tbss") == 0
      || strncmp (name, ".tbss.", 6) == 0
      || strncmp (name, ".gnu.linkonce.tb.", 17) == 0)
    flags |= SECTION_TLS | SECTION_BSS;






  if (!(flags & (SECTION_CODE | SECTION_BSS | SECTION_TLS))
      && (strcmp (name, ".init_array") == 0
   || strcmp (name, ".fini_array") == 0
   || strcmp (name, ".preinit_array") == 0))
    flags |= SECTION_NOTYPE;

  return flags;
}
