
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* namelist ;
typedef int cpp_reader ;


 scalar_t__ cpp_defined (int *,unsigned char const*,size_t) ;
 int recognized_macro (scalar_t__*) ;
 size_t strlen (scalar_t__*) ;

__attribute__((used)) static void
check_macro_names (cpp_reader *pfile, namelist names)
{
  size_t len;
  while (*names)
    {
      len = strlen (names);
      if (cpp_defined (pfile, (const unsigned char *)names, len))
 recognized_macro (names);
      names += len + 1;
    }
}
