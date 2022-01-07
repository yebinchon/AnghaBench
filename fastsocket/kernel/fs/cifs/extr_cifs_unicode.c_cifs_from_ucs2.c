
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
typedef scalar_t__ __u16 ;
typedef int __le16 ;


 int NLS_MAX_CHARSET_SIZE ;
 int cifs_mapchar (char*,scalar_t__,struct nls_table const*,int) ;
 scalar_t__ get_unaligned_le16 (int const*) ;
 int nls_nullsize (struct nls_table const*) ;

int
cifs_from_ucs2(char *to, const __le16 *from, int tolen, int fromlen,
   const struct nls_table *codepage, bool mapchar)
{
 int i, charlen, safelen;
 int outlen = 0;
 int nullsize = nls_nullsize(codepage);
 int fromwords = fromlen / 2;
 char tmp[NLS_MAX_CHARSET_SIZE];
 __u16 ftmp;







 safelen = tolen - (NLS_MAX_CHARSET_SIZE + nullsize);

 for (i = 0; i < fromwords; i++) {
  ftmp = get_unaligned_le16(&from[i]);
  if (ftmp == 0)
   break;





  if (outlen >= safelen) {
   charlen = cifs_mapchar(tmp, ftmp, codepage, mapchar);
   if ((outlen + charlen) > (tolen - nullsize))
    break;
  }


  charlen = cifs_mapchar(&to[outlen], ftmp, codepage, mapchar);
  outlen += charlen;
 }


 for (i = 0; i < nullsize; i++)
  to[outlen++] = 0;

 return outlen;
}
