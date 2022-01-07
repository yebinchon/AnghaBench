
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_register_pragma (int ,char*,int ) ;
 int c_register_pragma_with_expansion (int ,char*,int ) ;
 int solaris_pragma_align ;
 int solaris_pragma_fini ;
 int solaris_pragma_init ;

void
solaris_register_pragmas (void)
{
  c_register_pragma_with_expansion (0, "align", solaris_pragma_align);
  c_register_pragma (0, "init", solaris_pragma_init);
  c_register_pragma (0, "fini", solaris_pragma_fini);
}
