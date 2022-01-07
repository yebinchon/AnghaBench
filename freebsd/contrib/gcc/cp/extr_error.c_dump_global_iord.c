
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_GLOBAL_CTOR_P (int ) ;
 scalar_t__ DECL_GLOBAL_DTOR_P (int ) ;
 int cxx_pp ;
 int gcc_unreachable () ;
 int input_filename ;
 int pp_base (int ) ;
 int pp_printf (int ,char*,char const*,int ) ;

__attribute__((used)) static void
dump_global_iord (tree t)
{
  const char *p = ((void*)0);

  if (DECL_GLOBAL_CTOR_P (t))
    p = "initializers";
  else if (DECL_GLOBAL_DTOR_P (t))
    p = "destructors";
  else
    gcc_unreachable ();

  pp_printf (pp_base (cxx_pp), "(static %s for %s)", p, input_filename);
}
