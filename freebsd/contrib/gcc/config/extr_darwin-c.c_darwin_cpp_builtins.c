
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int builtin_define (char*) ;
 int builtin_define_with_value (char*,char*,int) ;
 scalar_t__ darwin_macosx_version_min ;
 char* version_as_macro () ;

void
darwin_cpp_builtins (cpp_reader *pfile)
{
  builtin_define ("__MACH__");
  builtin_define ("__APPLE__");



  builtin_define_with_value ("__APPLE_CC__", "1", 0);

  if (darwin_macosx_version_min)
    builtin_define_with_value ("__ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__",
          version_as_macro(), 0);
}
