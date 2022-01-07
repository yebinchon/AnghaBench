
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int (* uni2char ) (scalar_t__,char*,int) ;} ;
typedef scalar_t__ __u16 ;
typedef int __le16 ;


 int NLS_MAX_CHARSET_SIZE ;
 scalar_t__ get_unaligned_le16 (int const*) ;
 int stub1 (scalar_t__,char*,int) ;

int
cifs_ucs2_bytes(const __le16 *from, int maxbytes,
  const struct nls_table *codepage)
{
 int i;
 int charlen, outlen = 0;
 int maxwords = maxbytes / 2;
 char tmp[NLS_MAX_CHARSET_SIZE];
 __u16 ftmp;

 for (i = 0; i < maxwords; i++) {
  ftmp = get_unaligned_le16(&from[i]);
  if (ftmp == 0)
   break;

  charlen = codepage->uni2char(ftmp, tmp, NLS_MAX_CHARSET_SIZE);
  if (charlen > 0)
   outlen += charlen;
  else
   outlen++;
 }

 return outlen;
}
