#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct read_pe_section_data {int /*<<< orphan*/  ms_type; scalar_t__ vma_offset; } ;
struct objfile {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,struct objfile*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (char *sym_name,
		     unsigned long func_rva,
		     const struct read_pe_section_data *section_data,
		     const char *dll_name, struct objfile *objfile)
{
  /* Add the stored offset to get the loaded address of the symbol. */

  CORE_ADDR vma = func_rva + section_data->vma_offset;

  char *qualified_name = 0;
  int dll_name_len = FUNC2 (dll_name);
  int count;

  /* Generate a (hopefully unique) qualified name using the first part
     of the dll name, e.g. KERNEL32!AddAtomA. This matches the style
     used by windbg from the "Microsoft Debugging Tools for Windows". */

  qualified_name = FUNC5 (dll_name_len + FUNC2 (sym_name) + 2);

  FUNC3 (qualified_name, dll_name, dll_name_len);
  qualified_name[dll_name_len] = '!';
  FUNC1 (qualified_name + dll_name_len + 1, sym_name);

  FUNC0 (qualified_name,
			      vma, section_data->ms_type, objfile);

  FUNC4 (qualified_name);

  /* Enter the plain name as well, which might not be unique. */
  FUNC0 (sym_name, vma, section_data->ms_type, objfile);
}