
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* XSTR (int ,int ) ;
 int make_numeric_value (int) ;

__attribute__((used)) static const char *
attr_numeral (int n)
{
  return XSTR (make_numeric_value (n), 0);
}
