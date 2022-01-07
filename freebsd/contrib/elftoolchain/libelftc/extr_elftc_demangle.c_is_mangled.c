
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_cpp_mangled_ARM (char const*) ;
 scalar_t__ is_cpp_mangled_gnu2 (char const*) ;
 scalar_t__ is_cpp_mangled_gnu3 (char const*) ;

__attribute__((used)) static unsigned int
is_mangled(const char *s, unsigned int style)
{

 switch (style) {
 case 130: return (is_cpp_mangled_ARM(s) ? style : 0);
 case 129: return (is_cpp_mangled_gnu2(s) ? style : 0);
 case 128: return (is_cpp_mangled_gnu3(s) ? style : 0);
 }


 if (is_cpp_mangled_gnu3(s))
  return (128);
 if (is_cpp_mangled_gnu2(s))
  return (129);
 if (is_cpp_mangled_ARM(s))
  return (130);


 return (0);
}
