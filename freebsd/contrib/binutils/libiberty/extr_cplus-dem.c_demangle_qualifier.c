
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code_for_qualifier (int) ;
 char const* qualifier_string (int ) ;

__attribute__((used)) static const char*
demangle_qualifier (int c)
{
  return qualifier_string (code_for_qualifier (c));
}
