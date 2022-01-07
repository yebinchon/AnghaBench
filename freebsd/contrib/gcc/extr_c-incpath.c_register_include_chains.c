
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_4__ {scalar_t__ cplusplus; scalar_t__ objc; } ;
typedef TYPE_1__ cpp_options ;
struct TYPE_5__ {int (* extra_includes ) (char const*,char const*,int) ;int (* extra_pre_includes ) (char const*,char const*,int) ;} ;


 size_t BRACKET ;
 size_t QUOTE ;
 size_t SYSTEM ;
 int add_env_var_paths (char const* const,size_t) ;
 int add_standard_paths (char const*,char const*,char const*,int) ;
 TYPE_1__* cpp_get_options (int *) ;
 int cpp_set_include_chains (int *,int ,int ,int ) ;
 int * heads ;
 int merge_include_chains (int *,int) ;
 int quote_ignores_source_dir ;
 int stub1 (char const*,char const*,int) ;
 int stub2 (char const*,char const*,int) ;
 TYPE_2__ target_c_incpath ;

void
register_include_chains (cpp_reader *pfile, const char *sysroot,
    const char *iprefix, const char *imultilib,
    int stdinc, int cxx_stdinc, int verbose)
{
  static const char *const lang_env_vars[] =
    { "C_INCLUDE_PATH", "CPLUS_INCLUDE_PATH",
      "OBJC_INCLUDE_PATH", "OBJCPLUS_INCLUDE_PATH" };
  cpp_options *cpp_opts = cpp_get_options (pfile);
  size_t idx = (cpp_opts->objc ? 2: 0);

  if (cpp_opts->cplusplus)
    idx++;
  else
    cxx_stdinc = 0;



  add_env_var_paths ("CPATH", BRACKET);
  add_env_var_paths (lang_env_vars[idx], SYSTEM);

  target_c_incpath.extra_pre_includes (sysroot, iprefix, stdinc);


  if (stdinc)
    add_standard_paths (sysroot, iprefix, imultilib, cxx_stdinc);

  target_c_incpath.extra_includes (sysroot, iprefix, stdinc);

  merge_include_chains (pfile, verbose);

  cpp_set_include_chains (pfile, heads[QUOTE], heads[BRACKET],
     quote_ignores_source_dir);
}
