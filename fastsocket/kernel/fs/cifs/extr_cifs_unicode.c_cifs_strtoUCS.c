
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int (* char2uni ) (char const*,int,int*) ;} ;
typedef int __le16 ;


 int cERROR (int,char*,char const,int) ;
 int put_unaligned_le16 (int,int *) ;
 int stub1 (char const*,int,int*) ;

int
cifs_strtoUCS(__le16 *to, const char *from, int len,
       const struct nls_table *codepage)
{
 int charlen;
 int i;
 wchar_t wchar_to;

 for (i = 0; len && *from; i++, from += charlen, len -= charlen) {
  charlen = codepage->char2uni(from, len, &wchar_to);
  if (charlen < 1) {
   cERROR(1, "strtoUCS: char2uni of 0x%x returned %d",
    *from, charlen);

   wchar_to = 0x003f;
   charlen = 1;
  }
  put_unaligned_le16(wchar_to, &to[i]);
 }

 put_unaligned_le16(0, &to[i]);
 return i;
}
