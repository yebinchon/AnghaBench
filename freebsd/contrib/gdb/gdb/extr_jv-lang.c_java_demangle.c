
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_JAVA ;
 char* cplus_demangle (char const*,int) ;

__attribute__((used)) static char *java_demangle (const char *mangled, int options)
{
  return cplus_demangle (mangled, options | DMGL_JAVA);
}
