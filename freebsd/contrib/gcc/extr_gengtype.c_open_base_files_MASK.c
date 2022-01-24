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
typedef  void* outf_p ;

/* Variables and functions */
 size_t NUM_BASE_FILES ; 
 void** base_files ; 
 void* FUNC0 (char*,char*) ; 
 void* header_file ; 
 char** lang_dir_names ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,char const* const) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  size_t i;

  header_file = FUNC0 ("GCC", "gtype-desc.h");

  for (i = 0; i < NUM_BASE_FILES; i++)
    base_files[i] = FUNC0 (lang_dir_names[i],
				 FUNC2 ("gtype-%s.h", lang_dir_names[i]));

  /* gtype-desc.c is a little special, so we create it here.  */
  {
    /* The order of files here matters very much.  */
    static const char *const ifiles [] = {
      "config.h", "system.h", "coretypes.h", "tm.h", "varray.h", 
      "hashtab.h", "splay-tree.h",  "obstack.h", "bitmap.h", "input.h",
      "tree.h", "rtl.h", "function.h", "insn-config.h", "expr.h",
      "hard-reg-set.h", "basic-block.h", "cselib.h", "insn-addr.h",
      "optabs.h", "libfuncs.h", "debug.h", "ggc.h", "cgraph.h",
      "tree-flow.h", "reload.h", "cpp-id-data.h", "tree-chrec.h",
      "except.h", "output.h", NULL
    };
    const char *const *ifp;
    outf_p gtype_desc_c;

    gtype_desc_c = FUNC0 ("GCC", "gtype-desc.c");
    for (ifp = ifiles; *ifp; ifp++)
      FUNC1 (gtype_desc_c, "#include \"%s\"\n", *ifp);
  }
}