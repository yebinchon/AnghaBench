
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;


 int PATH_MAX ;
 int cFYI (int,char*) ;

__attribute__((used)) static int cifs_unicode_bytelen(char *str)
{
 int len;
 __le16 *ustr = (__le16 *)str;

 for (len = 0; len <= PATH_MAX; len++) {
  if (ustr[len] == 0)
   return len << 1;
 }
 cFYI(1, "Unicode string longer than PATH_MAX found");
 return len << 1;
}
