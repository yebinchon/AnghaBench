
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 scalar_t__ memcmp (int const*,int const*,int) ;
 int strlen (int const*) ;

__attribute__((used)) static UCHAR *kstrstr(const UCHAR *str1,const UCHAR *str2) {
  int str1_len=strlen(str1);
  int str2_len=strlen(str2);

  while (str1_len >= str2_len) {
       str1_len--;
      if(memcmp(str1,str2,str2_len)==0)
         return (UCHAR *)str1;
        str1++;
  }
  return ((void*)0);
}
