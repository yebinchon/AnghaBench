
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* outf_p ;


 size_t NUM_BASE_FILES ;
 void** base_files ;
 void* create_file (char*,char*) ;
 void* header_file ;
 char** lang_dir_names ;
 int oprintf (void*,char*,char const* const) ;
 char* xasprintf (char*,char*) ;

__attribute__((used)) static void
open_base_files (void)
{
  size_t i;

  header_file = create_file ("GCC", "gtype-desc.h");

  for (i = 0; i < NUM_BASE_FILES; i++)
    base_files[i] = create_file (lang_dir_names[i],
     xasprintf ("gtype-%s.h", lang_dir_names[i]));


  {

    static const char *const ifiles [] = {
      "config.h", "system.h", "coretypes.h", "tm.h", "varray.h",
      "hashtab.h", "splay-tree.h", "obstack.h", "bitmap.h", "input.h",
      "tree.h", "rtl.h", "function.h", "insn-config.h", "expr.h",
      "hard-reg-set.h", "basic-block.h", "cselib.h", "insn-addr.h",
      "optabs.h", "libfuncs.h", "debug.h", "ggc.h", "cgraph.h",
      "tree-flow.h", "reload.h", "cpp-id-data.h", "tree-chrec.h",
      "except.h", "output.h", ((void*)0)
    };
    const char *const *ifp;
    outf_p gtype_desc_c;

    gtype_desc_c = create_file ("GCC", "gtype-desc.c");
    for (ifp = ifiles; *ifp; ifp++)
      oprintf (gtype_desc_c, "#include \"%s\"\n", *ifp);
  }
}
