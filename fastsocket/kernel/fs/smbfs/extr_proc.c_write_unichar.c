
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ENAMETOOLONG ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static inline int write_unichar(wchar_t ch, char *output, int olen)
{
 if (olen < 5)
  return -ENAMETOOLONG;
 sprintf(output, ":%04x", ch);
 return 5;
}
