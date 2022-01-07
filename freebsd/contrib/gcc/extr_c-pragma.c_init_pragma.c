
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_pragmas ;


 unsigned int PRAGMA_GCC_PCH_PREPROCESS ;
 int REGISTER_TARGET_PRAGMAS () ;
 int c_register_pragma (char*,char*,int ) ;
 int c_register_pragma_with_expansion (int ,char*,int ) ;
 int cpp_register_deferred_pragma (int ,char*,char*,unsigned int,int,int) ;
 scalar_t__ flag_openmp ;
 int flag_preprocess_only ;
 int handle_pragma_diagnostic ;
 int handle_pragma_extern_prefix ;
 int handle_pragma_pack ;
 int handle_pragma_redefine_extname ;
 int handle_pragma_visibility ;
 int handle_pragma_weak ;
 int parse_in ;

void
init_pragma (void)
{
  if (flag_openmp && !flag_preprocess_only)
    {
      struct omp_pragma_def { const char *name; unsigned int id; };
      static const struct omp_pragma_def omp_pragmas[] = {
 { "atomic", 139 },
 { "barrier", 138 },
 { "critical", 137 },
 { "flush", 136 },
 { "for", 135 },
 { "master", 134 },
 { "ordered", 133 },
 { "parallel", 132 },
 { "section", 131 },
 { "sections", 130 },
 { "single", 129 },
 { "threadprivate", 128 }
      };

      const int n_omp_pragmas = sizeof (omp_pragmas) / sizeof (*omp_pragmas);
      int i;

      for (i = 0; i < n_omp_pragmas; ++i)
 cpp_register_deferred_pragma (parse_in, "omp", omp_pragmas[i].name,
          omp_pragmas[i].id, 1, 1);
    }

  cpp_register_deferred_pragma (parse_in, "GCC", "pch_preprocess",
    PRAGMA_GCC_PCH_PREPROCESS, 0, 0);
  c_register_pragma ("GCC", "diagnostic", handle_pragma_diagnostic);

  c_register_pragma_with_expansion (0, "redefine_extname", handle_pragma_redefine_extname);
  c_register_pragma (0, "extern_prefix", handle_pragma_extern_prefix);




}
