
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef int __le16 ;


 int GFP_KERNEL ;
 int cifs_from_ucs2 (char*,int *,int,int const,struct nls_table const*,int) ;
 int cifs_ucs2_bytes (int *,int const,struct nls_table const*) ;
 char* kmalloc (int,int ) ;
 scalar_t__ nls_nullsize (struct nls_table const*) ;
 int strlcpy (char*,char const*,int) ;
 int strnlen (char const*,int const) ;

char *
cifs_strndup_from_ucs(const char *src, const int maxlen, const bool is_unicode,
      const struct nls_table *codepage)
{
 int len;
 char *dst;

 if (is_unicode) {
  len = cifs_ucs2_bytes((__le16 *) src, maxlen, codepage);
  len += nls_nullsize(codepage);
  dst = kmalloc(len, GFP_KERNEL);
  if (!dst)
   return ((void*)0);
  cifs_from_ucs2(dst, (__le16 *) src, len, maxlen, codepage,
          0);
 } else {
  len = strnlen(src, maxlen);
  len++;
  dst = kmalloc(len, GFP_KERNEL);
  if (!dst)
   return ((void*)0);
  strlcpy(dst, src, len);
 }

 return dst;
}
