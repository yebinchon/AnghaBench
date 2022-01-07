
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* cpp_demangle_ARM (char const*) ;
 char* cpp_demangle_gnu2 (char const*) ;
 char* cpp_demangle_gnu3 (char const*) ;

__attribute__((used)) static char *
demangle(const char *s, unsigned int style, unsigned int rc)
{

 (void) rc;
 switch (style) {
 case 130: return (cpp_demangle_ARM(s));
 case 129: return (cpp_demangle_gnu2(s));
 case 128: return (cpp_demangle_gnu3(s));
 default:
  assert(0);
  return (((void*)0));
 }
}
