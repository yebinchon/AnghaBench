
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct default_include {int cxx_aware; scalar_t__ multilib; int component; scalar_t__ fname; scalar_t__ add_sysroot; int cplusplus; } ;


 int SYSTEM ;
 int add_path (char*,int ,int ,int) ;
 char* concat (char const*,int ,char const*,...) ;
 int cpp_GCC_INCLUDE_DIR ;
 size_t cpp_GCC_INCLUDE_DIR_len ;
 struct default_include* cpp_include_defaults ;
 int dir_separator_str ;
 int strncmp (scalar_t__,int ,size_t) ;
 char* update_path (scalar_t__,int ) ;

__attribute__((used)) static void
add_standard_paths (const char *sysroot, const char *iprefix,
      const char *imultilib, int cxx_stdinc)
{
  const struct default_include *p;
  size_t len;

  if (iprefix && (len = cpp_GCC_INCLUDE_DIR_len) != 0)
    {



      for (p = cpp_include_defaults; p->fname; p++)
 {
   if (!p->cplusplus || cxx_stdinc)
     {



       if (sysroot && p->add_sysroot)
  continue;
       if (!strncmp (p->fname, cpp_GCC_INCLUDE_DIR, len))
  {
    char *str = concat (iprefix, p->fname + len, ((void*)0));
    if (p->multilib && imultilib)
      str = concat (str, dir_separator_str, imultilib, ((void*)0));
    add_path (str, SYSTEM, p->cxx_aware, 0);
  }
     }
 }
    }

  for (p = cpp_include_defaults; p->fname; p++)
    {
      if (!p->cplusplus || cxx_stdinc)
 {
   char *str;


   if (sysroot && p->add_sysroot)
     str = concat (sysroot, p->fname, ((void*)0));
   else
     str = update_path (p->fname, p->component);

   if (p->multilib && imultilib)
     str = concat (str, dir_separator_str, imultilib, ((void*)0));

   add_path (str, SYSTEM, p->cxx_aware, 0);
 }
    }
}
