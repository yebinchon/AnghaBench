
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 int DMGL_RET_POSTFIX ;
 char* d_demangle (char const*,int,size_t*) ;

char *
java_demangle_v3 (const char *mangled)
{
  size_t alc;

  return d_demangle (mangled, DMGL_JAVA | DMGL_PARAMS | DMGL_RET_POSTFIX, &alc);
}
