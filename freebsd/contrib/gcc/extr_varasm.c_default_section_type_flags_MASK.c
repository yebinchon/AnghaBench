#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {char* unlikely_text_section_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 unsigned int SECTION_BSS ; 
 unsigned int SECTION_CODE ; 
 unsigned int SECTION_LINKONCE ; 
 unsigned int SECTION_NOTYPE ; 
 unsigned int SECTION_TLS ; 
 unsigned int SECTION_WRITE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* UNLIKELY_EXECUTED_TEXT_SECTION_NAME ; 
 scalar_t__ VAR_DECL ; 
 TYPE_1__* cfun ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

unsigned int
FUNC6 (tree decl, const char *name, int reloc)
{
  unsigned int flags;

  if (decl && FUNC2 (decl) == FUNCTION_DECL)
    flags = SECTION_CODE;
  else if (decl && FUNC3 (decl, reloc))
    flags = 0;
  else if (current_function_decl
	   && cfun
	   && cfun->unlikely_text_section_name
	   && FUNC4 (name, cfun->unlikely_text_section_name) == 0)
    flags = SECTION_CODE;
  else if (!decl
	   && (!current_function_decl || !cfun)
	   && FUNC4 (name, UNLIKELY_EXECUTED_TEXT_SECTION_NAME) == 0)
    flags = SECTION_CODE;
  else
    flags = SECTION_WRITE;

  if (decl && FUNC0 (decl))
    flags |= SECTION_LINKONCE;

  if (decl && FUNC2 (decl) == VAR_DECL && FUNC1 (decl))
    flags |= SECTION_TLS | SECTION_WRITE;

  if (FUNC4 (name, ".bss") == 0
      || FUNC5 (name, ".bss.", 5) == 0
      || FUNC5 (name, ".gnu.linkonce.b.", 16) == 0
      || FUNC4 (name, ".sbss") == 0
      || FUNC5 (name, ".sbss.", 6) == 0
      || FUNC5 (name, ".gnu.linkonce.sb.", 17) == 0)
    flags |= SECTION_BSS;

  if (FUNC4 (name, ".tdata") == 0
      || FUNC5 (name, ".tdata.", 7) == 0
      || FUNC5 (name, ".gnu.linkonce.td.", 17) == 0)
    flags |= SECTION_TLS;

  if (FUNC4 (name, ".tbss") == 0
      || FUNC5 (name, ".tbss.", 6) == 0
      || FUNC5 (name, ".gnu.linkonce.tb.", 17) == 0)
    flags |= SECTION_TLS | SECTION_BSS;

  /* These three sections have special ELF types.  They are neither
     SHT_PROGBITS nor SHT_NOBITS, so when changing sections we don't
     want to print a section type (@progbits or @nobits).  If someone
     is silly enough to emit code or TLS variables to one of these
     sections, then don't handle them specially.  */
  if (!(flags & (SECTION_CODE | SECTION_BSS | SECTION_TLS))
      && (FUNC4 (name, ".init_array") == 0
	  || FUNC4 (name, ".fini_array") == 0
	  || FUNC4 (name, ".preinit_array") == 0))
    flags |= SECTION_NOTYPE;

  return flags;
}